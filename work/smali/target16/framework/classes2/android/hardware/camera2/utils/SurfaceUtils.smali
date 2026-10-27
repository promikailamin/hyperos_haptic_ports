.class public Landroid/hardware/camera2/utils/SurfaceUtils;
.super Ljava/lang/Object;
.source "SurfaceUtils.java"


# static fields
.field private static final blacklist BAD_VALUE:I

.field private static final blacklist BGRA_8888:I = 0x5

.field private static final blacklist USAGE_HW_COMPOSER:I = 0x800

.field private static final blacklist USAGE_HW_MASK:I = 0x71f00

.field private static final blacklist USAGE_RENDERSCRIPT:I = 0x100000

.field private static final blacklist USAGE_SW_READ_MASK:I = 0xf


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")V"
        }
    .end annotation

    .line 264
    if-eqz p0, :cond_106

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_106

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_106

    .line 269
    invoke-static {}, Landroid/hardware/camera2/utils/SurfaceUtils;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 271
    return-void

    .line 274
    :cond_16
    nop

    .line 275
    if-nez p1, :cond_22

    .line 276
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_38

    .line 279
    :cond_22
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object v0

    .line 280
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 285
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 288
    :goto_38
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 289
    invoke-static {v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V

    .line 292
    invoke-static {v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v2

    .line 293
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 299
    invoke-static {v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 300
    invoke-static {v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v2

    if-eqz v2, :cond_62

    goto :goto_6a

    .line 301
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This output surface is neither preview nor hardware video encoding surface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :cond_6a
    :goto_6a
    invoke-static {v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 305
    invoke-static {v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_77

    goto :goto_7f

    .line 306
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This output surface can not be both preview and hardware video encoding surface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 309
    :cond_7f
    :goto_7f
    goto :goto_3c

    .line 294
    :cond_80
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Surface size "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is not part of the high speed supported size list "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 296
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 312
    :cond_af
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, v1, :cond_da

    .line 314
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 315
    nop

    .line 316
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result p1

    .line 317
    nop

    .line 318
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result p0

    .line 319
    if-eq p1, p0, :cond_d2

    goto :goto_da

    .line 320
    :cond_d2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The 2 output surfaces must have different type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_da
    :goto_da
    return-void

    .line 281
    :cond_db
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fps range "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " in the request is not a supported high speed fps range "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 283
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_106
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Output target surface list must not be null and the size must be 1 or 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V
    .registers 4

    .line 246
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result p0

    .line 248
    const/16 v0, 0x22

    if-ne p0, v0, :cond_9

    .line 252
    return-void

    .line 249
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface format("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ") is not for preview or hardware video encoding!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist detectSurfaceFormat(Landroid/view/Surface;)I
    .registers 2

    .line 197
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceType(Landroid/view/Surface;)I

    move-result p0

    .line 199
    sget v0, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq p0, v0, :cond_c

    .line 201
    return p0

    .line 199
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Surface was abandoned"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getOverrideFormat(IJ)I
    .registers 9

    .line 171
    const/4 v0, 0x1

    if-lt p0, v0, :cond_21

    const/4 v0, 0x5

    if-gt p0, v0, :cond_21

    .line 172
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->surfaceFormatFix()Z

    move-result v0

    const/16 v1, 0x22

    if-nez v0, :cond_f

    .line 174
    return v1

    .line 179
    :cond_f
    const-wide/32 v2, 0x71f00

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_21

    const-wide/16 v2, 0xf

    and-long/2addr p1, v2

    cmp-long p1, p1, v4

    if-nez p1, :cond_21

    .line 181
    return v1

    .line 184
    :cond_21
    return p0
.end method

.method public static greylist-max-o getSurfaceDataspace(Landroid/view/Surface;)I
    .registers 2

    .line 213
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceDataspace(Landroid/view/Surface;)I

    move-result p0

    .line 215
    sget v0, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq p0, v0, :cond_c

    .line 216
    return p0

    .line 215
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Surface was abandoned"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o getSurfaceFormat(Landroid/view/Surface;)I
    .registers 4

    .line 153
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    .line 155
    sget v1, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v0, v1, :cond_14

    .line 156
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v1

    .line 157
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getOverrideFormat(IJ)I

    move-result p0

    return p0

    .line 155
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Surface was abandoned"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o getSurfaceId(Landroid/view/Surface;)J
    .registers 3

    .line 103
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :try_start_3
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeGetSurfaceId(Landroid/view/Surface;)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    .line 106
    :catch_8
    move-exception p0

    .line 107
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static greylist getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .registers 4

    .line 135
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 138
    invoke-static {p0, v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I

    move-result p0

    .line 139
    sget v1, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq p0, v1, :cond_1a

    .line 141
    new-instance p0, Landroid/util/Size;

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 139
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Surface was abandoned"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getSurfaceUsage(Landroid/view/Surface;)J
    .registers 3

    .line 118
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :try_start_3
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    .line 121
    :catch_8
    move-exception p0

    .line 122
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static greylist-max-o isFlexibleConsumer(Landroid/view/Surface;)Z
    .registers 7

    .line 225
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 230
    nop

    .line 231
    nop

    .line 234
    const-wide/32 v2, 0x110000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_1c

    const-wide/16 v2, 0x903

    and-long/2addr v0, v2

    cmp-long p0, v0, v4

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    .line 236
    :goto_1d
    return p0
.end method

.method private static blacklist isPrivilegedApp()Z
    .registers 4

    .line 338
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v1, "persist.vendor.camera.privapp.list"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 342
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 343
    invoke-interface {v2, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 344
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 346
    const/4 v0, 0x1

    return v0

    .line 348
    :cond_32
    goto :goto_1e

    .line 351
    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z
    .registers 7

    .line 85
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 87
    nop

    .line 89
    nop

    .line 90
    const-wide/32 v2, 0x100803

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_1d

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    cmp-long p0, v0, v4

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    .line 93
    :goto_1e
    return p0
.end method

.method public static greylist-max-o isSurfaceForPreview(Landroid/view/Surface;)Z
    .registers 7

    .line 65
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 67
    nop

    .line 69
    nop

    .line 71
    const-wide/32 v2, 0x110003

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_1c

    const-wide/16 v2, 0xb00

    and-long/2addr v0, v2

    cmp-long p0, v0, v4

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    .line 74
    :goto_1d
    return p0
.end method

.method private static native blacklist nativeDetectSurfaceDataspace(Landroid/view/Surface;)I
.end method

.method private static native blacklist nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I
.end method

.method private static native blacklist nativeDetectSurfaceType(Landroid/view/Surface;)I
.end method

.method private static native blacklist nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J
.end method

.method private static native blacklist nativeGetSurfaceId(Landroid/view/Surface;)J
.end method
