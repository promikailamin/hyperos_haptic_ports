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
        Landroid/view/Display$Mode$Builder;
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

.field public static final blacklist INVALID_MODE_ID:I = -0x1


# instance fields
.field private final blacklist mAlternativeRefreshRates:[F

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mModeId:I

.field private final greylist-max-o mRefreshRate:F

.field private final greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2005
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Display$Mode;

    sput-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    .line 2240
    new-instance v0, Landroid/view/Display$Mode$1;

    invoke-direct {v0}, Landroid/view/Display$Mode$1;-><init>()V

    sput-object v0, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIF)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    .line 2024
    const/4 v0, 0x0

    new-array v6, v0, [F

    const/4 v2, -0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/view/Display$Mode;-><init>(IIIF[F)V

    .line 2025
    return-void
.end method

.method public constructor greylist-max-r <init>(IIIF)V
    .registers 12
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F

    .line 2032
    const/4 v0, 0x0

    new-array v6, v0, [F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/Display$Mode;-><init>(IIIF[F)V

    .line 2033
    return-void
.end method

.method public constructor blacklist <init>(IIIF[F)V
    .registers 7
    .param p1, "modeId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F
    .param p5, "alternativeRefreshRates"    # [F

    .line 2039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    iput p1, p0, Landroid/view/Display$Mode;->mModeId:I

    .line 2041
    iput p2, p0, Landroid/view/Display$Mode;->mWidth:I

    .line 2042
    iput p3, p0, Landroid/view/Display$Mode;->mHeight:I

    .line 2043
    iput p4, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    .line 2044
    array-length v0, p5

    .line 2045
    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2046
    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    .line 2047
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/Display$Mode;-><init>(IIIF[F)V

    .line 2228
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/Display$Mode-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/Display$Mode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2223
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 2186
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2187
    return v0

    .line 2189
    :cond_4
    instance-of v1, p1, Landroid/view/Display$Mode;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2190
    return v2

    .line 2192
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/view/Display$Mode;

    .line 2193
    .local v1, "that":Landroid/view/Display$Mode;
    iget v3, p0, Landroid/view/Display$Mode;->mModeId:I

    iget v4, v1, Landroid/view/Display$Mode;->mModeId:I

    if-ne v3, v4, :cond_2a

    iget v3, v1, Landroid/view/Display$Mode;->mWidth:I

    iget v4, v1, Landroid/view/Display$Mode;->mHeight:I

    iget v5, v1, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    iget-object v4, v1, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2194
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 2193
    :goto_2b
    return v0
.end method

.method public blacklist equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z
    .registers 4
    .param p1, "other"    # Landroid/view/Display$Mode;

    .line 2163
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    iget v1, p1, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    iget v1, p1, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist getAlternativeRefreshRates()[F
    .registers 2

    .line 2117
    iget-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    return-object v0
.end method

.method public whitelist getModeId()I
    .registers 2

    .line 2053
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    return v0
.end method

.method public whitelist getPhysicalHeight()I
    .registers 2

    .line 2085
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    return v0
.end method

.method public whitelist getPhysicalWidth()I
    .registers 2

    .line 2069
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    return v0
.end method

.method public whitelist getRefreshRate()F
    .registers 2

    .line 2092
    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2199
    const/4 v0, 0x1

    .line 2200
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mModeId:I

    add-int/2addr v1, v2

    .line 2201
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mWidth:I

    add-int/2addr v0, v2

    .line 2202
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mHeight:I

    add-int/2addr v1, v2

    .line 2203
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 2204
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    .line 2205
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public blacklist isRefreshRateSet()Z
    .registers 3

    .line 2172
    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

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

    .line 2181
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

.method public greylist-max-o matches(IIF)Z
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    .line 2127
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_16

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, p2, :cond_16

    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    .line 2129
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 2127
    :goto_17
    return v0
.end method

.method public blacklist matchesIfValid(IIF)Z
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "refreshRate"    # F

    .line 2143
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2144
    invoke-static {p3}, Landroid/view/Display;->isRefreshRateValid(F)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2145
    return v1

    .line 2147
    :cond_14
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v2

    if-eq v0, v2, :cond_1f

    .line 2148
    return v1

    .line 2150
    :cond_1f
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_46

    .line 2151
    :cond_29
    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, p2, :cond_46

    .line 2152
    :cond_33
    invoke-static {p3}, Landroid/view/Display;->isRefreshRateValid(F)Z

    move-result v0

    if-eqz v0, :cond_47

    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    .line 2153
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v0, v2, :cond_46

    goto :goto_47

    :cond_46
    goto :goto_48

    :cond_47
    :goto_47
    const/4 v1, 0x1

    .line 2150
    :goto_48
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2211
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2212
    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2213
    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2214
    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2215
    const-string v1, ", alternativeRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    .line 2216
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2217
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2210
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 2232
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2233
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2234
    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2235
    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2236
    iget-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2237
    return-void
.end method
