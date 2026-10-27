.class public final Landroid/graphics/Gainmap;
.super Ljava/lang/Object;
.source "Gainmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Gainmap$NoImagePreloadHolder;,
        Landroid/graphics/Gainmap$GainmapDirection;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Gainmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GAINMAP_DIRECTION_HDR_TO_SDR:I = 0x1

.field public static final whitelist GAINMAP_DIRECTION_SDR_TO_HDR:I


# instance fields
.field private blacklist mGainmapContents:Landroid/graphics/Bitmap;

.field final blacklist mNativePtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/Gainmap;->nGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnReadGainmapFromParcel(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/Gainmap;->nReadGainmapFromParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 407
    new-instance v0, Landroid/graphics/Gainmap$1;

    invoke-direct {v0}, Landroid/graphics/Gainmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Gainmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 151
    invoke-static {}, Landroid/graphics/Gainmap;->nCreateEmpty()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;J)V

    .line 152
    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Bitmap;J)V
    .registers 6

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_14

    .line 129
    iput-wide p2, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    .line 130
    invoke-virtual {p0, p1}, Landroid/graphics/Gainmap;->setGainmapContents(Landroid/graphics/Bitmap;)V

    .line 132
    sget-object p1, Landroid/graphics/Gainmap$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {p1, p0, p2, p3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 133
    return-void

    .line 126
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "internal error: native gainmap is 0"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Landroid/graphics/Gainmap;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 159
    iget-wide v0, p1, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Gainmap;->nCreateCopy(J)J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;J)V

    .line 160
    return-void
.end method

.method private static native blacklist nCreateCopy(J)J
.end method

.method private static native blacklist nCreateEmpty()J
.end method

.method private static native blacklist nGetAlternativeColorSpace(J)Landroid/graphics/ColorSpace;
.end method

.method private static native blacklist nGetDirection(J)I
.end method

.method private static native blacklist nGetDisplayRatioHdr(J)F
.end method

.method private static native blacklist nGetDisplayRatioSdr(J)F
.end method

.method private static native blacklist nGetEpsilonHdr(J[F)V
.end method

.method private static native blacklist nGetEpsilonSdr(J[F)V
.end method

.method private static native blacklist nGetFinalizer()J
.end method

.method private static native blacklist nGetGamma(J[F)V
.end method

.method private static native blacklist nGetRatioMax(J[F)V
.end method

.method private static native blacklist nGetRatioMin(J[F)V
.end method

.method private static native blacklist nReadGainmapFromParcel(JLandroid/os/Parcel;)V
.end method

.method private static native blacklist nSetAlternativeColorSpace(JJ)V
.end method

.method private static native blacklist nSetBitmap(JLandroid/graphics/Bitmap;)V
.end method

.method private static native blacklist nSetDirection(JI)V
.end method

.method private static native blacklist nSetDisplayRatioHdr(JF)V
.end method

.method private static native blacklist nSetDisplayRatioSdr(JF)V
.end method

.method private static native blacklist nSetEpsilonHdr(JFFF)V
.end method

.method private static native blacklist nSetEpsilonSdr(JFFF)V
.end method

.method private static native blacklist nSetGamma(JFFF)V
.end method

.method private static native blacklist nSetRatioMax(JFFF)V
.end method

.method private static native blacklist nSetRatioMin(JFFF)V
.end method

.method private static native blacklist nWriteGainmapToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public blacklist asShared()Landroid/graphics/Gainmap;
    .registers 5

    .line 166
    iget-object v0, p0, Landroid/graphics/Gainmap;->mGainmapContents:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    iget-object v1, p0, Landroid/graphics/Gainmap;->mGainmapContents:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_b

    .line 168
    return-object p0

    .line 170
    :cond_b
    new-instance v1, Landroid/graphics/Gainmap;

    iget-wide v2, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/graphics/Gainmap;->nCreateCopy(J)J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;J)V

    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlternativeImagePrimaries()Landroid/graphics/ColorSpace;
    .registers 3

    .line 359
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Gainmap;->nGetAlternativeColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayRatioForFullHdr()F
    .registers 3

    .line 310
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Gainmap;->nGetDisplayRatioHdr(J)F

    move-result v0

    return v0
.end method

.method public whitelist getEpsilonHdr()[F
    .registers 4

    .line 287
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 288
    iget-wide v1, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Gainmap;->nGetEpsilonHdr(J[F)V

    .line 289
    return-object v0
.end method

.method public whitelist getEpsilonSdr()[F
    .registers 4

    .line 268
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 269
    iget-wide v1, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Gainmap;->nGetEpsilonSdr(J[F)V

    .line 270
    return-object v0
.end method

.method public whitelist getGainmapContents()Landroid/graphics/Bitmap;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/graphics/Gainmap;->mGainmapContents:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getGainmapDirection()I
    .registers 3

    .line 379
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Gainmap;->nGetDirection(J)I

    move-result v0

    return v0
.end method

.method public whitelist getGamma()[F
    .registers 4

    .line 249
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 250
    iget-wide v1, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Gainmap;->nGetGamma(J[F)V

    .line 251
    return-object v0
.end method

.method public whitelist getMinDisplayRatioForHdrTransition()F
    .registers 3

    .line 331
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Gainmap;->nGetDisplayRatioSdr(J)F

    move-result v0

    return v0
.end method

.method public whitelist getRatioMax()[F
    .registers 4

    .line 231
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 232
    iget-wide v1, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Gainmap;->nGetRatioMax(J[F)V

    .line 233
    return-object v0
.end method

.method public whitelist getRatioMin()[F
    .registers 4

    .line 213
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 214
    iget-wide v1, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Gainmap;->nGetRatioMin(J[F)V

    .line 215
    return-object v0
.end method

.method public whitelist setAlternativeImagePrimaries(Landroid/graphics/ColorSpace;)V
    .registers 6

    .line 344
    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v0

    .line 345
    :goto_9
    iget-wide v2, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Gainmap;->nSetAlternativeColorSpace(JJ)V

    .line 346
    return-void
.end method

.method public whitelist setDisplayRatioForFullHdr(F)V
    .registers 5

    .line 298
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_12

    .line 302
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Gainmap;->nSetDisplayRatioHdr(JF)V

    .line 303
    return-void

    .line 299
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayRatioForFullHdr must be >= 1.0f, got = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEpsilonHdr(FFF)V
    .registers 6

    .line 278
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Gainmap;->nSetEpsilonHdr(JFFF)V

    .line 279
    return-void
.end method

.method public whitelist setEpsilonSdr(FFF)V
    .registers 6

    .line 259
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Gainmap;->nSetEpsilonSdr(JFFF)V

    .line 260
    return-void
.end method

.method public whitelist setGainmapContents(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 196
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Gainmap;->nSetBitmap(JLandroid/graphics/Bitmap;)V

    .line 197
    iput-object p1, p0, Landroid/graphics/Gainmap;->mGainmapContents:Landroid/graphics/Bitmap;

    .line 198
    return-void

    .line 195
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap is recycled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setGainmapDirection(I)V
    .registers 5

    .line 367
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 369
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid gainmap direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1f
    :goto_1f
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Gainmap;->nSetDirection(JI)V

    .line 372
    return-void
.end method

.method public whitelist setGamma(FFF)V
    .registers 6

    .line 240
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Gainmap;->nSetGamma(JFFF)V

    .line 241
    return-void
.end method

.method public whitelist setMinDisplayRatioForHdrTransition(F)V
    .registers 5

    .line 319
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_12

    .line 323
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Gainmap;->nSetDisplayRatioSdr(JF)V

    .line 324
    return-void

    .line 320
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMinDisplayRatioForHdrTransition must be >= 1.0f, got = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRatioMax(FFF)V
    .registers 6

    .line 222
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Gainmap;->nSetRatioMax(JFFF)V

    .line 223
    return-void
.end method

.method public whitelist setRatioMin(FFF)V
    .registers 6

    .line 204
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Gainmap;->nSetRatioMin(JFFF)V

    .line 205
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 399
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 402
    iget-object v0, p0, Landroid/graphics/Gainmap;->mGainmapContents:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 404
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Gainmap;->nWriteGainmapToParcel(JLandroid/os/Parcel;)V

    .line 405
    return-void

    .line 400
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot be written to a parcel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
