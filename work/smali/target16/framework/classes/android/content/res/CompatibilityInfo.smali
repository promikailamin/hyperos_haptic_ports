.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;,
        Landroid/content/res/CompatibilityInfo$CompatScale;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final greylist-max-p CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final greylist-max-o DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field private static final blacklist HAS_OVERRIDE_SCALING:I = 0x20

.field public static final greylist-max-o MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final greylist-max-o NEEDS_COMPAT_RES:I = 0x10

.field private static final greylist-max-o NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final greylist-max-o NEVER_NEEDS_COMPAT:I = 0x4

.field private static final greylist-max-o SCALING_REQUIRED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "CompatibilityInfo"

.field private static blacklist sCameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

.field private static blacklist sOverrideDensityDisplayIds:[I

.field private static blacklist sOverrideDensityInvertScale:F

.field private static blacklist sOverrideInvertedScale:F


# instance fields
.field public final greylist-max-o applicationDensity:I

.field public final blacklist applicationDensityInvertedScale:F

.field public final blacklist applicationDensityScale:F

.field public final greylist-max-o applicationInvertedScale:F

.field public final greylist applicationScale:F

.field public blacklist cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

.field private final greylist-max-o mCompatibilityFlags:I

.field public blacklist overrideDensityDisplayIds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 161
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 164
    sput v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 171
    new-instance v0, Landroid/content/res/CameraCompatibilityInfo$Builder;

    invoke-direct {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;-><init>()V

    .line 172
    invoke-virtual {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->build()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v0

    sput-object v0, Landroid/content/res/CompatibilityInfo;->sCameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    .line 963
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 4

    .line 375
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 378
    return-void
.end method

.method private constructor greylist-max-o <init>(IIFF)V
    .registers 6

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Landroid/content/res/CameraCompatibilityInfo$Builder;

    invoke-direct {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;-><init>()V

    .line 154
    invoke-virtual {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->build()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    .line 364
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 365
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 366
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 367
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 368
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 369
    const/high16 p1, 0x3f800000    # 1.0f

    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    div-float/2addr p1, p2

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 370
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/res/CompatibilityInfo;->overrideDensityDisplayIds:[I

    .line 371
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZF)V

    .line 179
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;IIZF)V
    .registers 13

    .line 183
    move v6, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZFF)V

    .line 184
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;IIZFF)V
    .registers 15

    .line 188
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZFF[I)V

    .line 190
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;IIZFF[I)V
    .registers 12

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Landroid/content/res/CameraCompatibilityInfo$Builder;

    invoke-direct {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;-><init>()V

    .line 154
    invoke-virtual {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->build()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    .line 194
    nop

    .line 196
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_19

    .line 197
    const/16 v0, 0x10

    goto :goto_1a

    .line 196
    :cond_19
    move v0, v2

    .line 199
    :goto_1a
    iput-object p7, p0, Landroid/content/res/CompatibilityInfo;->overrideDensityDisplayIds:[I

    .line 200
    const/high16 p7, 0x3f800000    # 1.0f

    cmpl-float v1, p5, p7

    if-nez v1, :cond_118

    cmpl-float v1, p6, p7

    if-eqz v1, :cond_28

    goto/16 :goto_118

    .line 211
    :cond_28
    iget p5, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez p5, :cond_d7

    iget p5, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez p5, :cond_d7

    iget p5, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz p5, :cond_36

    goto/16 :goto_d7

    .line 275
    :cond_36
    nop

    .line 279
    nop

    .line 281
    iget p3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p3, p3, 0x800

    const/4 p5, 0x1

    const/16 p6, 0x8

    if-eqz p3, :cond_4c

    .line 282
    nop

    .line 283
    nop

    .line 284
    if-nez p4, :cond_49

    .line 288
    const/16 v2, 0x2a

    move p3, p5

    goto :goto_4d

    .line 284
    :cond_49
    move p3, p5

    move v2, p6

    goto :goto_4d

    .line 281
    :cond_4c
    move p3, v2

    .line 291
    :goto_4d
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_5c

    .line 292
    nop

    .line 293
    if-nez p4, :cond_5b

    .line 294
    or-int/lit8 v2, v2, 0x22

    move p3, p5

    goto :goto_5c

    .line 293
    :cond_5b
    move p3, p5

    .line 297
    :cond_5c
    :goto_5c
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_66

    .line 298
    nop

    .line 299
    or-int/lit8 v2, v2, 0x2

    goto :goto_67

    .line 297
    :cond_66
    move p5, p3

    .line 302
    :goto_67
    if-eqz p4, :cond_6b

    .line 307
    and-int/lit8 v2, v2, -0x3

    .line 310
    :cond_6b
    or-int/lit8 p3, v0, 0x8

    .line 311
    and-int/lit8 p4, p2, 0xf

    packed-switch p4, :pswitch_data_134

    goto :goto_8f

    .line 313
    :pswitch_73
    and-int/lit8 p4, v2, 0x20

    if-eqz p4, :cond_79

    .line 314
    and-int/lit8 p3, p3, -0x9

    .line 316
    :cond_79
    iget p4, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p4, v3

    if-eqz p4, :cond_8f

    .line 317
    or-int/lit8 p3, p3, 0x4

    goto :goto_8f

    .line 321
    :pswitch_81
    and-int/lit8 p4, v2, 0x8

    if-eqz p4, :cond_87

    .line 322
    and-int/lit8 p3, p3, -0x9

    .line 324
    :cond_87
    iget p4, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p4, p4, 0x800

    if-eqz p4, :cond_8f

    .line 325
    or-int/lit8 p3, p3, 0x4

    .line 330
    :cond_8f
    :goto_8f
    const/high16 p4, 0x10000000

    and-int/2addr p2, p4

    if-eqz p2, :cond_a0

    .line 331
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_9b

    .line 332
    and-int/lit8 p3, p3, -0x9

    goto :goto_a4

    .line 333
    :cond_9b
    if-nez p5, :cond_a4

    .line 334
    or-int/lit8 p3, p3, 0x2

    goto :goto_a4

    .line 337
    :cond_a0
    and-int/lit8 p2, p3, -0x9

    .line 338
    or-int/lit8 p3, p2, 0x4

    .line 341
    :cond_a4
    :goto_a4
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_b7

    .line 342
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 343
    iput p7, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 344
    iput p7, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 345
    iput p7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 346
    iput p7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    goto :goto_115

    .line 348
    :cond_b7
    const/16 p1, 0xa0

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 349
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float p1, p1

    const/high16 p2, 0x43200000    # 160.0f

    div-float/2addr p1, p2

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 351
    iget p1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float p1, p7, p1

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 352
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 354
    iget p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    div-float/2addr p7, p1

    iput p7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 355
    or-int/lit8 p3, p3, 0x1

    goto :goto_115

    .line 214
    :cond_d7
    :goto_d7
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz p2, :cond_de

    .line 215
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    goto :goto_e0

    .line 216
    :cond_de
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 217
    :goto_e0
    if-nez p2, :cond_e4

    .line 218
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 220
    :cond_e4
    iget p5, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz p5, :cond_eb

    .line 221
    iget p5, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_ec

    :cond_eb
    move p5, p2

    .line 222
    :goto_ec
    if-ge p5, p2, :cond_ef

    .line 223
    move p5, p2

    .line 225
    :cond_ef
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 227
    const/16 p6, 0x140

    if-le p2, p6, :cond_f8

    .line 234
    or-int/lit8 v0, v0, 0x4

    goto :goto_108

    .line 235
    :cond_f8
    if-eqz p1, :cond_ff

    if-le p3, p1, :cond_ff

    .line 239
    or-int/lit8 v0, v0, 0xa

    goto :goto_108

    .line 240
    :cond_ff
    if-lt p5, p3, :cond_104

    .line 243
    or-int/lit8 v0, v0, 0x4

    goto :goto_108

    .line 244
    :cond_104
    if-eqz p4, :cond_108

    .line 247
    or-int/lit8 v0, v0, 0x8

    .line 251
    :cond_108
    :goto_108
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 252
    iput p7, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 253
    iput p7, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 254
    iput p7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 255
    iput p7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 256
    move p3, v0

    .line 359
    :goto_115
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 360
    return-void

    .line 201
    :cond_118
    :goto_118
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 202
    div-float p1, p7, p5

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 203
    iput p6, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 204
    div-float/2addr p7, p6

    iput p7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 205
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float p1, p1

    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 207
    const/16 p1, 0x24

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 209
    return-void

    :pswitch_data_134
    .packed-switch 0x3
        :pswitch_81
        :pswitch_73
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/CompatibilityInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Landroid/content/res/CameraCompatibilityInfo$Builder;

    invoke-direct {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;-><init>()V

    .line 154
    invoke-virtual {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->build()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 983
    sget-object v0, Landroid/content/res/CameraCompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/CameraCompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/content/res/CompatibilityInfo;->overrideDensityDisplayIds:[I

    .line 985
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist applyOverrideIfNeeded(Landroid/content/res/Configuration;)V
    .registers 2

    .line 707
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;Z)V

    .line 708
    return-void
.end method

.method public static blacklist applyOverrideIfNeeded(Landroid/content/res/Configuration;I)V
    .registers 3

    .line 715
    sget-object v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityDisplayIds:[I

    if-eqz v0, :cond_e

    sget-object v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityDisplayIds:[I

    .line 716
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 717
    :goto_f
    invoke-static {p0, p1}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;Z)V

    .line 718
    return-void
.end method

.method private static blacklist applyOverrideIfNeeded(Landroid/content/res/Configuration;Z)V
    .registers 3

    .line 722
    sget-object v0, Landroid/content/res/CompatibilityInfo;->sCameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    invoke-virtual {v0, p0}, Landroid/content/res/CameraCompatibilityInfo;->applyToConfigurationIfNeeded(Landroid/content/res/Configuration;)V

    .line 724
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 725
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 726
    if-eqz p1, :cond_12

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_12
    sget p1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 725
    :goto_14
    invoke-static {v0, p1, p0}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 728
    :cond_17
    return-void
.end method

.method public static blacklist applyOverrideIfNeeded(Landroid/util/MergedConfiguration;I)V
    .registers 6

    .line 732
    sget-object v0, Landroid/content/res/CompatibilityInfo;->sCameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    .line 733
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 732
    invoke-virtual {v0, v1}, Landroid/content/res/CameraCompatibilityInfo;->applyToConfigurationIfNeeded(Landroid/content/res/Configuration;)V

    .line 734
    sget-object v0, Landroid/content/res/CompatibilityInfo;->sCameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    .line 735
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 734
    invoke-virtual {v0, v1}, Landroid/content/res/CameraCompatibilityInfo;->applyToConfigurationIfNeeded(Landroid/content/res/Configuration;)V

    .line 736
    sget-object v0, Landroid/content/res/CompatibilityInfo;->sCameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    .line 737
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 736
    invoke-virtual {v0, v1}, Landroid/content/res/CameraCompatibilityInfo;->applyToConfigurationIfNeeded(Landroid/content/res/Configuration;)V

    .line 739
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 740
    sget-object v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityDisplayIds:[I

    if-eqz v0, :cond_2f

    sget-object v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityDisplayIds:[I

    .line 741
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_2f

    const/4 p1, 0x1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    .line 742
    :goto_30
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 743
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_38

    move v2, v1

    goto :goto_3a

    :cond_38
    sget v2, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 744
    :goto_3a
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 742
    invoke-static {v0, v2, v3}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 745
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 746
    if-eqz p1, :cond_47

    move v2, v1

    goto :goto_49

    :cond_47
    sget v2, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 747
    :goto_49
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 745
    invoke-static {v0, v2, v3}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 748
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 749
    if-eqz p1, :cond_55

    goto :goto_57

    :cond_55
    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 750
    :goto_57
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 748
    invoke-static {v0, v1, p0}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 752
    :cond_5e
    return-void
.end method

.method public static greylist-max-r computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .registers 9

    .line 807
    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 808
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 810
    if-ge v0, v1, :cond_a

    .line 811
    nop

    .line 812
    move v3, v0

    move v2, v1

    goto :goto_d

    .line 814
    :cond_a
    nop

    .line 815
    move v2, v0

    move v3, v1

    .line 817
    :goto_d
    const/high16 v4, 0x43a00000    # 320.0f

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr p0, v4

    float-to-int p0, p0

    .line 818
    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 819
    const v3, 0x3fe3bbbc

    cmpl-float v5, v2, v3

    if-lez v5, :cond_21

    .line 820
    move v2, v3

    .line 822
    :cond_21
    int-to-float v3, p0

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 824
    if-ge v0, v1, :cond_29

    .line 825
    nop

    .line 826
    goto :goto_2d

    .line 828
    :cond_29
    nop

    .line 829
    move v6, v2

    move v2, p0

    move p0, v6

    .line 832
    :goto_2d
    int-to-float v0, v0

    int-to-float v3, p0

    div-float/2addr v0, v3

    .line 833
    int-to-float v1, v1

    int-to-float v3, v2

    div-float/2addr v1, v3

    .line 834
    cmpg-float v3, v0, v1

    if-gez v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 835
    :goto_39
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v1

    if-gez v3, :cond_40

    .line 836
    move v0, v1

    .line 839
    :cond_40
    if-eqz p1, :cond_46

    .line 840
    iput p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 841
    iput v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 844
    :cond_46
    return v0
.end method

.method public static blacklist getCameraCompatibilityInfo()Landroid/content/res/CameraCompatibilityInfo;
    .registers 1

    .line 795
    sget-object v0, Landroid/content/res/CompatibilityInfo;->sCameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    return-object v0
.end method

.method public static blacklist getOverrideDensityInvertedScale()F
    .registers 1

    .line 779
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    return v0
.end method

.method public static blacklist getOverrideInvertedScale()F
    .registers 1

    .line 774
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    return v0
.end method

.method private static blacklist hasOverrideScale()Z
    .registers 2

    .line 756
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private blacklist isCameraCompatibilityInfoEqual(Landroid/content/res/CompatibilityInfo;)Z
    .registers 3

    .line 891
    if-eqz p1, :cond_e

    iget-object p1, p1, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    iget-object v0, p0, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private blacklist isCompatibilityFlagsEqual(Landroid/content/res/CompatibilityInfo;)Z
    .registers 3

    .line 895
    if-eqz p1, :cond_a

    iget p1, p1, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private blacklist isScaleEqual(Landroid/content/res/CompatibilityInfo;)Z
    .registers 5

    .line 881
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 882
    :cond_4
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v1, v2, :cond_b

    return v0

    .line 883
    :cond_b
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_14

    return v0

    .line 884
    :cond_14
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1d

    return v0

    .line 885
    :cond_1d
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_26

    return v0

    .line 886
    :cond_26
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    iget p1, p1, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2f

    return v0

    .line 887
    :cond_2f
    const/4 p1, 0x1

    return p1
.end method

.method public static blacklist resetCameraCompatibilityInfo()V
    .registers 1

    .line 790
    new-instance v0, Landroid/content/res/CameraCompatibilityInfo$Builder;

    invoke-direct {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->build()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object v0

    sput-object v0, Landroid/content/res/CompatibilityInfo;->sCameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    .line 791
    return-void
.end method

.method public static blacklist scaleConfiguration(FFLandroid/content/res/Configuration;)V
    .registers 4

    .line 700
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 702
    iget-object p1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1, p0}, Landroid/app/WindowConfiguration;->scale(F)V

    .line 703
    return-void
.end method

.method public static blacklist scaleConfiguration(FLandroid/content/res/Configuration;)V
    .registers 2

    .line 694
    invoke-static {p0, p0, p1}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 695
    return-void
.end method

.method private static blacklist scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V
    .registers 6

    .line 646
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->density:F

    .line 647
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 662
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 663
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 664
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 665
    if-eqz p3, :cond_30

    .line 666
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    mul-float/2addr p1, p0

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 667
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    mul-float/2addr p1, p0

    add-float/2addr p1, v1

    float-to-int p0, p1

    iput p0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 669
    :cond_30
    return-void
.end method

.method public static blacklist setCameraCompatibilityInfo(Landroid/content/res/CameraCompatibilityInfo;)V
    .registers 1

    .line 785
    sput-object p0, Landroid/content/res/CompatibilityInfo;->sCameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    .line 786
    return-void
.end method

.method public static blacklist setOverrideInvertedScale(F)V
    .registers 2

    .line 761
    const/4 v0, 0x0

    invoke-static {p0, p0, v0}, Landroid/content/res/CompatibilityInfo;->setOverrideInvertedScale(FF[I)V

    .line 762
    return-void
.end method

.method public static blacklist setOverrideInvertedScale(FF[I)V
    .registers 3

    .line 767
    sput p0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 768
    sput p1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 769
    sput-object p2, Landroid/content/res/CompatibilityInfo;->sOverrideDensityDisplayIds:[I

    .line 770
    return-void
.end method


# virtual methods
.method public greylist-max-o alwaysSupportsScreen()Z
    .registers 2

    .line 410
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist applyDisplayMetricsIfNeeded(Landroid/util/DisplayMetrics;Z)V
    .registers 5

    .line 616
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 617
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/CompatibilityInfo;->scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V

    .line 619
    return-void

    .line 621
    :cond_e
    sget-object p2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    .line 622
    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 624
    :cond_19
    return-void
.end method

.method public greylist-max-o applyToConfiguration(ILandroid/content/res/Configuration;)V
    .registers 4

    .line 672
    sget-object v0, Landroid/content/res/CompatibilityInfo;->sCameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    invoke-virtual {v0, p2}, Landroid/content/res/CameraCompatibilityInfo;->applyToConfigurationIfNeeded(Landroid/content/res/Configuration;)V

    .line 673
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 674
    :cond_c
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_26

    .line 678
    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 681
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 682
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 683
    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 685
    :cond_26
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 686
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 687
    iget p1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-static {p1, v0, p2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 690
    :cond_35
    return-void
.end method

.method public greylist-max-o applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5

    .line 627
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 628
    :cond_7
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 631
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    goto :goto_19

    .line 633
    :cond_11
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 634
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 637
    :goto_19
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 638
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/content/res/CompatibilityInfo;->scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V

    .line 641
    :cond_27
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 849
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 850
    return v0

    .line 853
    :cond_4
    instance-of v1, p1, Landroid/content/res/CompatibilityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    check-cast p1, Landroid/content/res/CompatibilityInfo;

    .line 857
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isCompatibilityFlagsEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 858
    :cond_12
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isScaleEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    .line 859
    :cond_19
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isCameraCompatibilityInfoEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result p1

    if-nez p1, :cond_20

    return v2

    .line 860
    :cond_20
    return v0

    .line 854
    :cond_21
    return v2
.end method

.method public blacklist getCompatibilityChangesForConfig(Landroid/content/res/CompatibilityInfo;)I
    .registers 4

    .line 868
    nop

    .line 869
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isCameraCompatibilityInfoEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 870
    const/high16 v0, 0x20000000

    goto :goto_b

    .line 869
    :cond_a
    const/4 v0, 0x0

    .line 872
    :goto_b
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isScaleEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isCompatibilityFlagsEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 873
    :cond_17
    or-int/lit16 v0, v0, 0xd00

    .line 877
    :cond_19
    return v0
.end method

.method public greylist getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .line 423
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public blacklist hasOverrideScaling()Z
    .registers 2

    .line 390
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 934
    nop

    .line 935
    const/16 v0, 0x20f

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/2addr v0, v1

    .line 936
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v0, v1

    .line 937
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 938
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 939
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 940
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 941
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    invoke-virtual {v1}, Landroid/content/res/CameraCompatibilityInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 942
    return v0
.end method

.method public blacklist isOverrideCameraCompatibilityInfoRequired()Z
    .registers 2

    .line 397
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    invoke-static {v0}, Landroid/content/res/CameraCompatibilityInfo;->isCameraCompatModeActive(Landroid/content/res/CameraCompatibilityInfo;)Z

    move-result v0

    return v0
.end method

.method public greylist isScalingRequired()Z
    .registers 3

    .line 385
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public greylist-max-o needsCompatResources()Z
    .registers 2

    .line 414
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o neverSupportsScreen()Z
    .registers 2

    .line 406
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist supportsScreen()Z
    .registers 2

    .line 402
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 901
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 903
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 905
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 907
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->hasOverrideScaling()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 910
    const-string v1, " overrideInvScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 912
    const-string v1, " overrideDensityInvScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 915
    :cond_47
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isOverrideCameraCompatibilityInfoRequired()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 916
    const-string v1, " cameraCompatibilityInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    iget-object v1, p0, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 919
    :cond_57
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_62

    .line 920
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    :cond_62
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 923
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    :cond_6d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 926
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :cond_78
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 952
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 955
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 956
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 957
    iget p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 958
    iget-object p2, p0, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 959
    iget-object p2, p0, Landroid/content/res/CompatibilityInfo;->overrideDensityDisplayIds:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 960
    return-void
.end method
