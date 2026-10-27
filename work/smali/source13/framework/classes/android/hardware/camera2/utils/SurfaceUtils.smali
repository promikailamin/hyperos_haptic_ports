.class public Landroid/hardware/camera2/utils/SurfaceUtils;
.super Ljava/lang/Object;
.source "SurfaceUtils.java"


# static fields
.field private static final blacklist BAD_VALUE:I

.field private static final blacklist BGRA_8888:I = 0x5

.field private static final blacklist USAGE_HW_COMPOSER:I = 0x800

.field private static final blacklist USAGE_RENDERSCRIPT:I = 0x100000


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
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
    .registers 10
    .param p2, "config"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
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

    .line 244
    .local p0, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_10a

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_10a

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_10a

    .line 251
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtStub;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 253
    return-void

    .line 257
    :cond_1a
    const/4 v2, 0x0

    .line 259
    .local v2, "highSpeedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez p1, :cond_26

    .line 260
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3c

    .line 263
    :cond_26
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object v3

    .line 264
    .local v3, "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_df

    .line 269
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 272
    .end local v3    # "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_3c
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 273
    .local v4, "surface":Landroid/view/Surface;
    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V

    .line 276
    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    .line 277
    .local v5, "surfaceSize":Landroid/util/Size;
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 283
    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 284
    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v6

    if-eqz v6, :cond_66

    goto :goto_6e

    .line 285
    :cond_66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "This output surface is neither preview nor hardware video encoding surface"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_6e
    :goto_6e
    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 289
    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v6

    if-nez v6, :cond_7b

    goto :goto_83

    .line 290
    :cond_7b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "This output surface can not be both preview and hardware video encoding surface"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    .end local v4    # "surface":Landroid/view/Surface;
    .end local v5    # "surfaceSize":Landroid/util/Size;
    :cond_83
    :goto_83
    goto :goto_40

    .line 278
    .restart local v4    # "surface":Landroid/view/Surface;
    .restart local v5    # "surfaceSize":Landroid/util/Size;
    :cond_84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Surface size "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is not part of the high speed supported size list "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 280
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    .end local v4    # "surface":Landroid/view/Surface;
    .end local v5    # "surfaceSize":Landroid/util/Size;
    :cond_b3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v3, v1, :cond_de

    .line 298
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 299
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    nop

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v3

    .line 301
    .local v3, "isFirstSurfacePreview":Z
    nop

    .line 302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v4

    .line 303
    .local v4, "isSecondSurfacePreview":Z
    if-eq v3, v4, :cond_d6

    goto :goto_de

    .line 304
    :cond_d6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The 2 output surfaces must have different type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 308
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    .end local v3    # "isFirstSurfacePreview":Z
    .end local v4    # "isSecondSurfacePreview":Z
    :cond_de
    :goto_de
    return-void

    .line 265
    .local v3, "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_df
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fps range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in the request is not a supported high speed fps range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 267
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "highSpeedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v3    # "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_10a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output target surface list must not be null and the size must be 1 or 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V
    .registers 5
    .param p0, "surface"    # Landroid/view/Surface;

    .line 226
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    .line 228
    .local v0, "surfaceFormat":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    .line 232
    return-void

    .line 229
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface format("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not for preview or hardware video encoding!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist detectSurfaceFormat(Landroid/view/Surface;)I
    .registers 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 177
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    .line 179
    .local v0, "surfaceType":I
    sget v1, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v0, v1, :cond_c

    .line 181
    return v0

    .line 179
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSurfaceDataspace(Landroid/view/Surface;)I
    .registers 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 193
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceDataspace(Landroid/view/Surface;)I

    move-result v0

    .line 195
    .local v0, "dataSpace":I
    sget v1, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v0, v1, :cond_c

    .line 196
    return v0

    .line 195
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSurfaceFormat(Landroid/view/Surface;)I
    .registers 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 154
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    .line 156
    .local v0, "surfaceType":I
    sget v1, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v0, v1, :cond_14

    .line 160
    const/4 v1, 0x1

    if-lt v0, v1, :cond_13

    const/4 v1, 0x5

    if-gt v0, v1, :cond_13

    .line 162
    const/16 v0, 0x22

    .line 164
    :cond_13
    return v0

    .line 156
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSurfaceId(Landroid/view/Surface;)J
    .registers 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 104
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :try_start_3
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeGetSurfaceId(Landroid/view/Surface;)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    .line 107
    :catch_8
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static greylist getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .registers 6
    .param p0, "surface"    # Landroid/view/Surface;

    .line 136
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 139
    .local v0, "dimens":[I
    invoke-static {p0, v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I

    move-result v1

    .line 140
    .local v1, "errorFlag":I
    sget v2, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v1, v2, :cond_1a

    .line 142
    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object v2

    .line 140
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface was abandoned"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist getSurfaceUsage(Landroid/view/Surface;)J
    .registers 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 119
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :try_start_3
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    .line 122
    :catch_8
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static greylist-max-o isFlexibleConsumer(Landroid/view/Surface;)Z
    .registers 11
    .param p0, "output"    # Landroid/view/Surface;

    .line 205
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 210
    .local v0, "usageFlags":J
    const-wide/32 v2, 0x110000

    .line 211
    .local v2, "disallowedFlags":J
    const-wide/16 v4, 0x903

    .line 214
    .local v4, "allowedFlags":J
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1c

    and-long v6, v0, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1c

    const/4 v6, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v6, 0x0

    .line 216
    .local v6, "flexibleConsumer":Z
    :goto_1d
    return v6
.end method

.method public static greylist-max-o isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z
    .registers 11
    .param p0, "surface"    # Landroid/view/Surface;

    .line 84
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 86
    .local v0, "usageFlags":J
    const-wide/32 v2, 0x100803

    .line 88
    .local v2, "disallowedFlags":J
    const-wide/32 v4, 0x10000

    .line 89
    .local v4, "allowedFlags":J
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1d

    and-long v6, v0, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x0

    .line 92
    .local v6, "videoEncoderConsumer":Z
    :goto_1e
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v7

    .line 94
    .local v7, "surfaceFormat":I
    return v6
.end method

.method public static greylist-max-o isSurfaceForPreview(Landroid/view/Surface;)Z
    .registers 11
    .param p0, "surface"    # Landroid/view/Surface;

    .line 63
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 65
    .local v0, "usageFlags":J
    const-wide/32 v2, 0x110003

    .line 67
    .local v2, "disallowedFlags":J
    const-wide/16 v4, 0xb00

    .line 69
    .local v4, "allowedFlags":J
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1c

    and-long v6, v0, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1c

    const/4 v6, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v6, 0x0

    .line 71
    .local v6, "previewConsumer":Z
    :goto_1d
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v7

    .line 73
    .local v7, "surfaceFormat":I
    return v6
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
