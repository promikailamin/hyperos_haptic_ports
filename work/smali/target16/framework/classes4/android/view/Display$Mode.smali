.class public final Landroid/view/Display$Mode;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$Mode$Builder;,
        Landroid/view/Display$Mode$ModeFlags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o EMPTY_ARRAY:[Landroid/view/Display$Mode;

.field public static final blacklist FLAG_ANISOTROPY_CORRECTION:I = 0x4

.field public static final blacklist FLAG_ARR_RENDER_RATE:I = 0x1

.field public static final blacklist FLAG_SIZE_OVERRIDE:I = 0x2

.field public static final blacklist INVALID_MODE_ID:I = -0x1


# instance fields
.field private final blacklist mAlternativeRefreshRates:[F

.field private final blacklist mFlags:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mModeId:I

.field private final blacklist mParentModeId:I

.field private final blacklist mPeakRefreshRate:F

.field private final blacklist mSupportedHdrTypes:[I

.field private final blacklist mVsyncRate:F

.field private final greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2462
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Display$Mode;

    sput-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    .line 2809
    new-instance v0, Landroid/view/Display$Mode$1;

    invoke-direct {v0}, Landroid/view/Display$Mode$1;-><init>()V

    sput-object v0, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIF)V
    .registers 13

    .line 2488
    const/4 v0, 0x0

    new-array v7, v0, [F

    new-array v8, v0, [I

    const/4 v2, -0x1

    move v6, p3

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v8}, Landroid/view/Display$Mode;-><init>(IIIFF[F[I)V

    .line 2490
    return-void
.end method

.method public constructor greylist-max-r <init>(IIIF)V
    .registers 14

    .line 2497
    const/4 v0, 0x0

    new-array v7, v0, [F

    new-array v8, v0, [I

    move v6, p4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Landroid/view/Display$Mode;-><init>(IIIFF[F[I)V

    .line 2498
    return-void
.end method

.method public constructor blacklist <init>(IIIFF[F[I)V
    .registers 18

    .line 2515
    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/view/Display$Mode;-><init>(IIIIIFF[F[I)V

    .line 2517
    return-void
.end method

.method public constructor blacklist <init>(IIIF[F[I)V
    .registers 15

    .line 2506
    move v5, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/Display$Mode;-><init>(IIIFF[F[I)V

    .line 2508
    return-void
.end method

.method public constructor blacklist <init>(IIIIIFF[F[I)V
    .registers 10

    .line 2524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2525
    iput p1, p0, Landroid/view/Display$Mode;->mModeId:I

    .line 2526
    iput p2, p0, Landroid/view/Display$Mode;->mParentModeId:I

    .line 2527
    iput p3, p0, Landroid/view/Display$Mode;->mFlags:I

    .line 2528
    iput p4, p0, Landroid/view/Display$Mode;->mWidth:I

    .line 2529
    iput p5, p0, Landroid/view/Display$Mode;->mHeight:I

    .line 2530
    iput p6, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    .line 2531
    iput p7, p0, Landroid/view/Display$Mode;->mVsyncRate:F

    .line 2532
    array-length p1, p8

    .line 2533
    invoke-static {p8, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2534
    iget-object p1, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-static {p1}, Ljava/util/Arrays;->sort([F)V

    .line 2535
    array-length p1, p9

    invoke-static {p9, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    .line 2536
    iget-object p1, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 2537
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 12

    .line 2791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2792
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 2791
    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/view/Display$Mode;-><init>(IIIIIFF[F[I)V

    .line 2793
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/Display-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/Display$Mode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist flagsToString(I)Ljava/lang/String;
    .registers 3

    .line 2775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2776
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 2777
    const-string v1, ", FLAG_ARR_RENDER_RATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2779
    :cond_e
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_17

    .line 2780
    const-string p0, ", FLAG_SIZE_OVERRIDE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2787
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 2728
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2729
    return v0

    .line 2731
    :cond_4
    instance-of v1, p1, Landroid/view/Display$Mode;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2732
    return v2

    .line 2734
    :cond_a
    check-cast p1, Landroid/view/Display$Mode;

    .line 2735
    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    iget v3, p1, Landroid/view/Display$Mode;->mModeId:I

    if-ne v1, v3, :cond_33

    iget v1, p1, Landroid/view/Display$Mode;->mWidth:I

    iget v3, p1, Landroid/view/Display$Mode;->mHeight:I

    iget v4, p1, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    .line 2736
    invoke-virtual {p0, v1, v3, v4}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    iget-object v3, p1, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2737
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    iget-object p1, p1, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    .line 2738
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    move v0, v2

    .line 2735
    :goto_34
    return v0
.end method

.method public blacklist equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z
    .registers 4

    .line 2704
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    iget v1, p1, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    iget v1, p1, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    iget-object p1, p1, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    if-ne v0, p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public whitelist getAlternativeRefreshRates()[F
    .registers 3

    .line 2648
    iget-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    iget-object v1, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 2561
    iget v0, p0, Landroid/view/Display$Mode;->mFlags:I

    return v0
.end method

.method public whitelist getModeId()I
    .registers 2

    .line 2543
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    return v0
.end method

.method public blacklist getParentModeId()I
    .registers 2

    .line 2552
    iget v0, p0, Landroid/view/Display$Mode;->mParentModeId:I

    return v0
.end method

.method public whitelist getPhysicalHeight()I
    .registers 2

    .line 2593
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    return v0
.end method

.method public whitelist getPhysicalWidth()I
    .registers 2

    .line 2577
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    return v0
.end method

.method public whitelist getRefreshRate()F
    .registers 2

    .line 2600
    iget v0, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    return v0
.end method

.method public whitelist getSupportedHdrTypes()[I
    .registers 3

    .line 2657
    iget-object v0, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    iget-object v1, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVsyncRate()F
    .registers 2

    .line 2612
    iget v0, p0, Landroid/view/Display$Mode;->mVsyncRate:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2743
    nop

    .line 2744
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    const/16 v1, 0x11

    add-int/2addr v0, v1

    .line 2745
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/Display$Mode;->mParentModeId:I

    add-int/2addr v0, v2

    .line 2746
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/Display$Mode;->mFlags:I

    add-int/2addr v0, v2

    .line 2747
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/Display$Mode;->mWidth:I

    add-int/2addr v0, v2

    .line 2748
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/Display$Mode;->mHeight:I

    add-int/2addr v0, v2

    .line 2749
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2750
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/Display$Mode;->mVsyncRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2751
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2752
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2753
    return v0
.end method

.method public blacklist isRefreshRateSet()Z
    .registers 3

    .line 2714
    iget v0, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isResolutionSet()Z
    .registers 3

    .line 2723
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist isSynthetic()Z
    .registers 4

    .line 2623
    iget v0, p0, Landroid/view/Display$Mode;->mParentModeId:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    iget v0, p0, Landroid/view/Display$Mode;->mFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :cond_d
    :goto_d
    return v2
.end method

.method public greylist-max-o matches(IIF)Z
    .registers 5

    .line 2667
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_16

    iget p1, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne p1, p2, :cond_16

    iget p1, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    .line 2669
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 2667
    :goto_17
    return p1
.end method

.method public blacklist matchesIfValid(IIF)Z
    .registers 7

    .line 2683
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2684
    invoke-static {p3}, Landroid/view/Display;->isRefreshRateValid(F)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2685
    return v1

    .line 2687
    :cond_14
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v2

    if-eq v0, v2, :cond_1f

    .line 2688
    return v1

    .line 2690
    :cond_1f
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_46

    .line 2691
    :cond_29
    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result p1

    if-eqz p1, :cond_33

    iget p1, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne p1, p2, :cond_46

    .line 2692
    :cond_33
    invoke-static {p3}, Landroid/view/Display;->isRefreshRateValid(F)Z

    move-result p1

    if-eqz p1, :cond_47

    iget p1, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    .line 2693
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 2694
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_46

    goto :goto_47

    :cond_46
    goto :goto_48

    :cond_47
    :goto_47
    const/4 v1, 0x1

    .line 2690
    :goto_48
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2758
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2759
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2760
    const-string v1, ", parentModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mParentModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2761
    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mFlags:I

    invoke-static {v1}, Landroid/view/Display$Mode;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2762
    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2763
    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2764
    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2765
    const-string v1, ", vsync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mVsyncRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2766
    const-string v1, ", alternativeRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2767
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2768
    const-string v1, ", supportedHdrTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    .line 2769
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2770
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2771
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2758
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2797
    iget p2, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2798
    iget p2, p0, Landroid/view/Display$Mode;->mParentModeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2799
    iget p2, p0, Landroid/view/Display$Mode;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2800
    iget p2, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2801
    iget p2, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2802
    iget p2, p0, Landroid/view/Display$Mode;->mPeakRefreshRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2803
    iget p2, p0, Landroid/view/Display$Mode;->mVsyncRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2804
    iget-object p2, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2805
    iget-object p2, p0, Landroid/view/Display$Mode;->mSupportedHdrTypes:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2806
    return-void
.end method
