.class public Lcom/android/internal/lineage/hardware/HSIC;
.super Ljava/lang/Object;
.source "HSIC.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/lineage/hardware/HSIC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContrast:F

.field private final blacklist mHue:F

.field private final blacklist mIntensity:F

.field private final blacklist mSaturation:F

.field private final blacklist mSaturationThreshold:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 115
    new-instance v0, Lcom/android/internal/lineage/hardware/HSIC$1;

    invoke-direct {v0}, Lcom/android/internal/lineage/hardware/HSIC$1;-><init>()V

    sput-object v0, Lcom/android/internal/lineage/hardware/HSIC;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFFF)V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/internal/lineage/hardware/HSIC;->mHue:F

    .line 36
    iput p2, p0, Lcom/android/internal/lineage/hardware/HSIC;->mSaturation:F

    .line 37
    iput p3, p0, Lcom/android/internal/lineage/hardware/HSIC;->mIntensity:F

    .line 38
    iput p4, p0, Lcom/android/internal/lineage/hardware/HSIC;->mContrast:F

    .line 39
    iput p5, p0, Lcom/android/internal/lineage/hardware/HSIC;->mSaturationThreshold:F

    .line 40
    return-void
.end method

.method public static blacklist fromFloatArray([F)Lcom/android/internal/lineage/hardware/HSIC;
    .registers 14

    .line 87
    array-length v0, p0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne v0, v1, :cond_19

    .line 88
    new-instance v7, Lcom/android/internal/lineage/hardware/HSIC;

    aget v8, p0, v5

    aget v9, p0, v4

    aget v10, p0, v3

    aget v11, p0, v2

    aget v12, p0, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/lineage/hardware/HSIC;-><init>(FFFFF)V

    return-object v7

    .line 89
    :cond_19
    array-length v0, p0

    if-ne v0, v6, :cond_2b

    .line 90
    new-instance v7, Lcom/android/internal/lineage/hardware/HSIC;

    aget v8, p0, v5

    aget v9, p0, v4

    aget v10, p0, v3

    aget v11, p0, v2

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/lineage/hardware/HSIC;-><init>(FFFFF)V

    return-object v7

    .line 92
    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist unflattenFrom(Ljava/lang/String;)Lcom/android/internal/lineage/hardware/HSIC;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 68
    const-string v0, "\\|"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    array-length v1, v0

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_28

    array-length v1, v0

    if-ne v1, v2, :cond_f

    goto :goto_28

    .line 70
    :cond_f
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unflatten HSIC values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_28
    :goto_28
    new-instance v1, Lcom/android/internal/lineage/hardware/HSIC;

    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    .line 73
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 74
    array-length v7, v0

    if-ne v7, v2, :cond_50

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    move v2, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/lineage/hardware/HSIC;-><init>(FFFFF)V

    .line 72
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist flatten()Ljava/lang/String;
    .registers 7

    .line 63
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/android/internal/lineage/hardware/HSIC;->mHue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/lineage/hardware/HSIC;->mSaturation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/lineage/hardware/HSIC;->mIntensity:F

    .line 64
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/lineage/hardware/HSIC;->mContrast:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/lineage/hardware/HSIC;->mSaturationThreshold:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 63
    const-string v2, "%f|%f|%f|%f|%f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContrast()F
    .registers 2

    .line 55
    iget v0, p0, Lcom/android/internal/lineage/hardware/HSIC;->mContrast:F

    return v0
.end method

.method public blacklist getHue()F
    .registers 2

    .line 43
    iget v0, p0, Lcom/android/internal/lineage/hardware/HSIC;->mHue:F

    return v0
.end method

.method public blacklist getIntensity()F
    .registers 2

    .line 51
    iget v0, p0, Lcom/android/internal/lineage/hardware/HSIC;->mIntensity:F

    return v0
.end method

.method public blacklist getSaturation()F
    .registers 2

    .line 47
    iget v0, p0, Lcom/android/internal/lineage/hardware/HSIC;->mSaturation:F

    return v0
.end method

.method public blacklist getSaturationThreshold()F
    .registers 2

    .line 59
    iget v0, p0, Lcom/android/internal/lineage/hardware/HSIC;->mSaturationThreshold:F

    return v0
.end method

.method public blacklist toFloatArray()[F
    .registers 8

    .line 83
    iget v0, p0, Lcom/android/internal/lineage/hardware/HSIC;->mHue:F

    iget v1, p0, Lcom/android/internal/lineage/hardware/HSIC;->mSaturation:F

    iget v2, p0, Lcom/android/internal/lineage/hardware/HSIC;->mIntensity:F

    iget v3, p0, Lcom/android/internal/lineage/hardware/HSIC;->mContrast:F

    iget v4, p0, Lcom/android/internal/lineage/hardware/HSIC;->mSaturationThreshold:F

    const/4 v5, 0x5

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v0, 0x2

    aput v2, v5, v0

    const/4 v0, 0x3

    aput v3, v5, v0

    const/4 v0, 0x4

    aput v4, v5, v0

    return-object v5
.end method

.method public blacklist toRGB()[I
    .registers 4

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/HSIC;->toFloatArray()[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 79
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 97
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/android/internal/lineage/hardware/HSIC;->mHue:F

    .line 99
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/lineage/hardware/HSIC;->mSaturation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/lineage/hardware/HSIC;->mIntensity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/lineage/hardware/HSIC;->mContrast:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/lineage/hardware/HSIC;->mSaturationThreshold:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 97
    const-string v2, "HSIC={ hue=%f saturation=%f intensity=%f contrast=%f saturationThreshold=%f }"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/HSIC;->toFloatArray()[F

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 110
    return-void
.end method
