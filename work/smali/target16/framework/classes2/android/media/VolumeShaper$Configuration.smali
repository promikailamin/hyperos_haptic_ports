.class public final Landroid/media/VolumeShaper$Configuration;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Configuration$Builder;,
        Landroid/media/VolumeShaper$Configuration$OptionFlag;,
        Landroid/media/VolumeShaper$Configuration$InterpolatorType;,
        Landroid/media/VolumeShaper$Configuration$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeShaper$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final whitelist INTERPOLATOR_TYPE_CUBIC:I = 0x2

.field public static final whitelist INTERPOLATOR_TYPE_CUBIC_MONOTONIC:I = 0x3

.field public static final whitelist INTERPOLATOR_TYPE_LINEAR:I = 0x1

.field public static final whitelist INTERPOLATOR_TYPE_STEP:I = 0x0

.field public static final whitelist LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

.field private static final greylist-max-o MAXIMUM_CURVE_POINTS:I = 0x10

.field public static final greylist-max-o OPTION_FLAG_CLOCK_TIME:I = 0x2

.field private static final greylist-max-o OPTION_FLAG_PUBLIC_ALL:I = 0x3

.field public static final greylist-max-o OPTION_FLAG_VOLUME_IN_DBFS:I = 0x1

.field public static final whitelist SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final whitelist SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field static final greylist-max-o TYPE_ID:I = 0x0

.field static final greylist-max-o TYPE_SCALE:I = 0x1


# instance fields
.field private final greylist-max-r mDurationMs:D

.field private final greylist-max-r mId:I

.field private final greylist-max-r mInterpolatorType:I

.field private final greylist-max-r mOptionFlags:I

.field private final greylist-max-r mTimes:[F

.field private final greylist-max-r mType:I

.field private final greylist-max-r mVolumes:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrorsAndThrowException([F[FZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckValidVolumeAndThrowException(FZ)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->checkValidVolumeAndThrowException(FZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smclampVolume([FZ)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->clampVolume([FZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 353
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 354
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_a6

    new-array v3, v1, [F

    fill-array-data v3, :array_ae

    .line 355
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 357
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 366
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 367
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    new-array v4, v1, [F

    fill-array-data v4, :array_b6

    new-array v5, v1, [F

    fill-array-data v5, :array_be

    .line 368
    invoke-virtual {v0, v4, v5}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 392
    const/16 v0, 0x10

    new-array v4, v0, [F

    .line 393
    new-array v5, v0, [F

    .line 394
    new-array v6, v0, [F

    .line 395
    const/4 v7, 0x0

    :goto_4f
    if-ge v7, v0, :cond_70

    .line 396
    int-to-float v8, v7

    const/high16 v9, 0x41700000    # 15.0f

    div-float/2addr v8, v9

    aput v8, v4, v7

    .line 397
    aget v8, v4, v7

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 398
    aput v8, v5, v7

    .line 399
    mul-float/2addr v8, v8

    aput v8, v6, v7

    .line 395
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 401
    :cond_70
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 402
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0, v4, v5}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 404
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 406
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 407
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 408
    invoke-virtual {v0, v4, v6}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 552
    new-instance v0, Landroid/media/VolumeShaper$Configuration$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$1;-><init>()V

    sput-object v0, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_a6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_ae
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_be
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 5

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    if-ltz p1, :cond_18

    .line 661
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 662
    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 663
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 664
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 665
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 666
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 667
    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 668
    return-void

    .line 659
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-r <init>(IIIDI[F[F)V
    .registers 9

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 683
    iput p2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 684
    iput p3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 685
    iput-wide p4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 686
    iput p6, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 688
    iput-object p7, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 689
    iput-object p8, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 690
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIDI[F[FLandroid/media/VolumeShaper-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[F)V

    return-void
.end method

.method private static greylist-max-o checkCurveForErrors([F[FZ)Ljava/lang/String;
    .registers 9

    .line 769
    if-nez p0, :cond_5

    .line 770
    const-string p0, "times array must be non-null"

    return-object p0

    .line 771
    :cond_5
    if-nez p1, :cond_a

    .line 772
    const-string p0, "volumes array must be non-null"

    return-object p0

    .line 773
    :cond_a
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_11

    .line 774
    const-string p0, "array length must match"

    return-object p0

    .line 775
    :cond_11
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_18

    .line 776
    const-string p0, "array length must be at least 2"

    return-object p0

    .line 777
    :cond_18
    array-length v0, p0

    const/16 v1, 0x10

    if-le v0, v1, :cond_20

    .line 778
    const-string p0, "array length must be no larger than 16"

    return-object p0

    .line 779
    :cond_20
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2b

    .line 780
    const-string p0, "times must start at 0.f"

    return-object p0

    .line 781
    :cond_2b
    array-length v1, p0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, p0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_39

    .line 782
    const-string p0, "times must end at 1.f"

    return-object p0

    .line 786
    :cond_39
    nop

    :goto_3a
    array-length v1, p0

    if-ge v3, v1, :cond_5e

    .line 787
    aget v1, p0, v3

    add-int/lit8 v5, v3, -0x1

    aget v5, p0, v5

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_5b

    .line 788
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "times not monotonic increasing, check index "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 786
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 791
    :cond_5e
    if-eqz p2, :cond_81

    .line 792
    nop

    :goto_61
    array-length p0, p1

    if-ge v0, p0, :cond_a9

    .line 793
    aget p0, p1, v0

    cmpg-float p0, p0, v2

    if-lez p0, :cond_7e

    .line 794
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "volumes for log scale cannot be positive, check index "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 792
    :cond_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 799
    :cond_81
    nop

    :goto_82
    array-length p0, p1

    if-ge v0, p0, :cond_a9

    .line 800
    aget p0, p1, v0

    cmpl-float p0, p0, v2

    if-ltz p0, :cond_95

    aget p0, p1, v0

    cmpg-float p0, p0, v4

    if-lez p0, :cond_92

    goto :goto_95

    .line 799
    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 801
    :cond_95
    :goto_95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "volumes for linear scale must be between 0.f and 1.f, check index "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 806
    :cond_a9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-o checkCurveForErrorsAndThrowException([F[FZZ)V
    .registers 4

    .line 811
    invoke-static {p0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrors([F[FZ)Ljava/lang/String;

    move-result-object p0

    .line 812
    if-eqz p0, :cond_14

    .line 813
    if-eqz p3, :cond_e

    .line 814
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 816
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 819
    :cond_14
    return-void
.end method

.method private static greylist-max-o checkValidVolumeAndThrowException(FZ)V
    .registers 3

    .line 822
    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 823
    cmpg-float p0, p0, v0

    if-gtz p0, :cond_8

    goto :goto_1a

    .line 824
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dbfs volume must be 0.f or less"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 827
    :cond_10
    cmpl-float p1, p0, v0

    if-ltz p1, :cond_1b

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1b

    .line 831
    :goto_1a
    return-void

    .line 828
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "volume must be >= 0.f and <= 1.f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o clampVolume([FZ)V
    .registers 5

    .line 834
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 835
    nop

    :goto_5
    array-length p1, p0

    if-ge v0, p1, :cond_2d

    .line 836
    aget p1, p0, v0

    cmpg-float p1, p1, v1

    if-lez p1, :cond_10

    .line 837
    aput v1, p0, v0

    .line 835
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 841
    :cond_13
    nop

    :goto_14
    array-length p1, p0

    if-ge v0, p1, :cond_2d

    .line 842
    aget p1, p0, v0

    cmpl-float p1, p1, v1

    if-gez p1, :cond_20

    .line 843
    aput v1, p0, v0

    goto :goto_2a

    .line 844
    :cond_20
    aget p1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v2

    if-lez p1, :cond_2a

    .line 845
    aput v2, p0, v0

    .line 841
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 849
    :cond_2d
    return-void
.end method

.method public static blacklist fromParcelable(Landroid/media/VolumeShaperConfiguration;)Landroid/media/VolumeShaper$Configuration;
    .registers 13

    .line 519
    iget v0, p0, Landroid/media/VolumeShaperConfiguration;->type:I

    invoke-static {v0}, Landroid/media/VolumeShaper$Configuration;->typeFromAidl(I)I

    move-result v2

    .line 520
    iget v3, p0, Landroid/media/VolumeShaperConfiguration;->id:I

    .line 521
    if-nez v2, :cond_10

    .line 522
    new-instance p0, Landroid/media/VolumeShaper$Configuration;

    invoke-direct {p0, v3}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    return-object p0

    .line 524
    :cond_10
    iget v0, p0, Landroid/media/VolumeShaperConfiguration;->optionFlags:I

    invoke-static {v0}, Landroid/media/VolumeShaper$Configuration;->optionFlagsFromAidl(I)I

    move-result v4

    .line 525
    iget-wide v5, p0, Landroid/media/VolumeShaperConfiguration;->durationMs:D

    .line 526
    iget-object v0, p0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget v0, v0, Landroid/media/InterpolatorConfig;->type:I

    invoke-static {v0}, Landroid/media/VolumeShaper$Configuration;->interpolatorTypeFromAidl(I)I

    move-result v7

    .line 530
    iget-object v0, p0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget-object v0, v0, Landroid/media/InterpolatorConfig;->xy:[F

    array-length v0, v0

    .line 531
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_4f

    .line 534
    div-int/lit8 v0, v0, 0x2

    new-array v8, v0, [F

    .line 535
    new-array v9, v0, [F

    .line 536
    const/4 v1, 0x0

    :goto_30
    if-ge v1, v0, :cond_49

    .line 537
    iget-object v10, p0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget-object v10, v10, Landroid/media/InterpolatorConfig;->xy:[F

    mul-int/lit8 v11, v1, 0x2

    aget v10, v10, v11

    aput v10, v8, v1

    .line 538
    iget-object v10, p0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    iget-object v10, v10, Landroid/media/InterpolatorConfig;->xy:[F

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    aput v10, v9, v1

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 541
    :cond_49
    new-instance v1, Landroid/media/VolumeShaper$Configuration;

    invoke-direct/range {v1 .. v9}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[F)V

    return-object v1

    .line 532
    :cond_4f
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "xy length must be even"

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist getMaximumCurvePoints()I
    .registers 1

    .line 245
    const/16 v0, 0x10

    return v0
.end method

.method private static blacklist interpolatorTypeFromAidl(I)I
    .registers 2

    .line 567
    packed-switch p0, :pswitch_data_14

    .line 577
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Unknown interpolator type"

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 575
    :pswitch_b
    const/4 p0, 0x3

    return p0

    .line 573
    :pswitch_d
    const/4 p0, 0x2

    return p0

    .line 571
    :pswitch_f
    const/4 p0, 0x1

    return p0

    .line 569
    :pswitch_11
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private static blacklist interpolatorTypeToAidl(I)I
    .registers 2

    .line 583
    packed-switch p0, :pswitch_data_14

    .line 593
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown interpolator type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 591
    :pswitch_b
    const/4 p0, 0x3

    return p0

    .line 589
    :pswitch_d
    const/4 p0, 0x2

    return p0

    .line 587
    :pswitch_f
    const/4 p0, 0x1

    return p0

    .line 585
    :pswitch_11
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private static blacklist optionFlagsFromAidl(I)I
    .registers 2

    .line 622
    nop

    .line 623
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 624
    const/4 v0, 0x1

    goto :goto_8

    .line 623
    :cond_7
    const/4 v0, 0x0

    .line 626
    :goto_8
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_e

    .line 627
    or-int/lit8 v0, v0, 0x2

    .line 629
    :cond_e
    return v0
.end method

.method private static blacklist optionFlagsToAidl(I)I
    .registers 2

    .line 633
    nop

    .line 634
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 635
    const/4 v0, 0x1

    goto :goto_8

    .line 634
    :cond_7
    const/4 v0, 0x0

    .line 637
    :goto_8
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_e

    .line 638
    or-int/lit8 v0, v0, 0x2

    .line 640
    :cond_e
    return v0
.end method

.method private blacklist toInterpolatorParcelable()Landroid/media/InterpolatorConfig;
    .registers 6

    .line 504
    new-instance v0, Landroid/media/InterpolatorConfig;

    invoke-direct {v0}, Landroid/media/InterpolatorConfig;-><init>()V

    .line 505
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Configuration;->interpolatorTypeToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/InterpolatorConfig;->type:I

    .line 506
    const/4 v1, 0x0

    iput v1, v0, Landroid/media/InterpolatorConfig;->firstSlope:F

    .line 507
    iput v1, v0, Landroid/media/InterpolatorConfig;->lastSlope:F

    .line 508
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    iput-object v1, v0, Landroid/media/InterpolatorConfig;->xy:[F

    .line 509
    const/4 v1, 0x0

    :goto_1c
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    array-length v2, v2

    if-ge v1, v2, :cond_38

    .line 510
    iget-object v2, v0, Landroid/media/InterpolatorConfig;->xy:[F

    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    aget v4, v4, v1

    aput v4, v2, v3

    .line 511
    iget-object v2, v0, Landroid/media/InterpolatorConfig;->xy:[F

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    aget v4, v4, v1

    aput v4, v2, v3

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 513
    :cond_38
    return-object v0
.end method

.method private static blacklist typeFromAidl(I)I
    .registers 2

    .line 599
    packed-switch p0, :pswitch_data_10

    .line 605
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Unknown type"

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 603
    :pswitch_b
    const/4 p0, 0x1

    return p0

    .line 601
    :pswitch_d
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private static blacklist typeToAidl(I)I
    .registers 2

    .line 611
    packed-switch p0, :pswitch_data_10

    .line 617
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 615
    :pswitch_b
    const/4 p0, 0x1

    return p0

    .line 613
    :pswitch_d
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 463
    instance-of v0, p1, Landroid/media/VolumeShaper$Configuration;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 464
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 465
    :cond_a
    check-cast p1, Landroid/media/VolumeShaper$Configuration;

    .line 469
    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    iget v3, p1, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-ne v2, v3, :cond_46

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iget v3, p1, Landroid/media/VolumeShaper$Configuration;->mId:I

    if-ne v2, v3, :cond_46

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v2, :cond_44

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    iget v3, p1, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    if-ne v2, v3, :cond_46

    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iget-wide v4, p1, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_46

    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    iget v3, p1, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    if-ne v2, v3, :cond_46

    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    iget-object v3, p1, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 475
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    iget-object p1, p1, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 476
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_46

    :cond_44
    move v1, v0

    goto :goto_47

    :cond_46
    nop

    .line 469
    :goto_47
    return v1
.end method

.method greylist-max-o getAllOptionFlags()I
    .registers 2

    .line 724
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    return v0
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 732
    iget-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public greylist-max-o getId()I
    .registers 2

    .line 705
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    return v0
.end method

.method public whitelist getInterpolatorType()I
    .registers 2

    .line 712
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    return v0
.end method

.method public greylist-max-o getOptionFlags()I
    .registers 2

    .line 720
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public whitelist getTimes()[F
    .registers 2

    .line 739
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    return-object v0
.end method

.method public greylist-max-o getType()I
    .registers 2

    .line 697
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    return v0
.end method

.method public whitelist getVolumes()[F
    .registers 2

    .line 746
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 454
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-nez v0, :cond_19

    .line 455
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_53

    .line 456
    :cond_19
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 458
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 456
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 454
    :goto_53
    return v0
.end method

.method public blacklist toParcelable()Landroid/media/VolumeShaperConfiguration;
    .registers 4

    .line 492
    new-instance v0, Landroid/media/VolumeShaperConfiguration;

    invoke-direct {v0}, Landroid/media/VolumeShaperConfiguration;-><init>()V

    .line 493
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Configuration;->typeToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/VolumeShaperConfiguration;->type:I

    .line 494
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    iput v1, v0, Landroid/media/VolumeShaperConfiguration;->id:I

    .line 495
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    if-eqz v1, :cond_27

    .line 496
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Configuration;->optionFlagsToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/VolumeShaperConfiguration;->optionFlags:I

    .line 497
    iget-wide v1, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    iput-wide v1, v0, Landroid/media/VolumeShaperConfiguration;->durationMs:D

    .line 498
    invoke-direct {p0}, Landroid/media/VolumeShaper$Configuration;->toInterpolatorParcelable()Landroid/media/InterpolatorConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/media/VolumeShaperConfiguration;->interpolatorConfig:Landroid/media/InterpolatorConfig;

    .line 500
    :cond_27
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeShaper.Configuration{mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    const-string v2, "}"

    if-nez v1, :cond_24

    .line 443
    goto :goto_7d

    .line 449
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mOptionFlags = 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 444
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mDurationMs = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mInterpolatorType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mTimes[] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 447
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mVolumes[] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 448
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 486
    invoke-virtual {p0}, Landroid/media/VolumeShaper$Configuration;->toParcelable()Landroid/media/VolumeShaperConfiguration;

    move-result-object v0

    .line 487
    invoke-virtual {v0, p1, p2}, Landroid/media/VolumeShaperConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 488
    return-void
.end method
