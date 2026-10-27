.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
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

.field private static final blacklist MIUI_DOWNSALE_FLAG:I = 0x200000

.field private static final greylist-max-o NEEDS_COMPAT_RES:I = 0x10

.field private static final greylist-max-o NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final greylist-max-o NEVER_NEEDS_COMPAT:I = 0x4

.field private static final greylist-max-o SCALING_REQUIRED:I = 0x1

.field static final blacklist TAG:Ljava/lang/String; = "CompatibilityInfo"


# instance fields
.field public final greylist-max-o applicationDensity:I

.field public final greylist-max-o applicationInvertedScale:F

.field public final greylist applicationScale:F

.field private final greylist-max-o mCompatibilityFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 708
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 4

    .line 315
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 318
    return-void
.end method

.method private constructor greylist-max-o <init>(IIFF)V
    .registers 5
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 308
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 309
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 310
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 311
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .registers 11
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZF)V

    .line 131
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;IIZF)V
    .registers 16
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .param p5, "overrideScale"    # F

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "compatFlags":I
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_c

    .line 138
    or-int/lit8 v0, v0, 0x10

    .line 140
    :cond_c
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_c5

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v1, :cond_c5

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v1, :cond_1c

    goto/16 :goto_c5

    .line 196
    :cond_1c
    const/4 v1, 0x2

    .line 202
    .local v1, "EXPANDABLE":I
    const/16 v3, 0x8

    .line 208
    .local v3, "LARGE_SCREENS":I
    const/16 v4, 0x20

    .line 210
    .local v4, "XLARGE_SCREENS":I
    const/4 v5, 0x0

    .line 214
    .local v5, "sizeInfo":I
    const/4 v6, 0x0

    .line 216
    .local v6, "anyResizeable":Z
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_30

    .line 217
    or-int/lit8 v5, v5, 0x8

    .line 218
    const/4 v6, 0x1

    .line 219
    if-nez p4, :cond_30

    .line 223
    or-int/lit8 v5, v5, 0x22

    .line 226
    :cond_30
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_3c

    .line 227
    const/4 v6, 0x1

    .line 228
    if-nez p4, :cond_3c

    .line 229
    or-int/lit8 v5, v5, 0x22

    .line 232
    :cond_3c
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_45

    .line 233
    const/4 v6, 0x1

    .line 234
    or-int/lit8 v5, v5, 0x2

    .line 237
    :cond_45
    if-eqz p4, :cond_49

    .line 242
    and-int/lit8 v5, v5, -0x3

    .line 245
    :cond_49
    or-int/lit8 v0, v0, 0x8

    .line 246
    and-int/lit8 v7, p2, 0xf

    packed-switch v7, :pswitch_data_166

    goto :goto_6d

    .line 248
    :pswitch_51
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_57

    .line 249
    and-int/lit8 v0, v0, -0x9

    .line 251
    :cond_57
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_6d

    .line 252
    or-int/lit8 v0, v0, 0x4

    goto :goto_6d

    .line 256
    :pswitch_5f
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_65

    .line 257
    and-int/lit8 v0, v0, -0x9

    .line 259
    :cond_65
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_6d

    .line 260
    or-int/lit8 v0, v0, 0x4

    .line 265
    :cond_6d
    :goto_6d
    const/high16 v7, 0x10000000

    and-int/2addr v7, p2

    if-eqz v7, :cond_7e

    .line 266
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_79

    .line 267
    and-int/lit8 v0, v0, -0x9

    goto :goto_82

    .line 268
    :cond_79
    if-nez v6, :cond_82

    .line 269
    or-int/lit8 v0, v0, 0x2

    goto :goto_82

    .line 272
    :cond_7e
    and-int/lit8 v0, v0, -0x9

    .line 273
    or-int/lit8 v0, v0, 0x4

    .line 276
    :cond_82
    :goto_82
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v7

    .line 277
    .local v7, "density":I
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-nez v8, :cond_9f

    .line 278
    const/16 v8, 0xa0

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 279
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v8, v9

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 281
    div-float/2addr v2, v8

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 282
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_115

    .line 283
    :cond_9f
    if-nez v7, :cond_b0

    cmpl-float v8, p5, v2

    if-eqz v8, :cond_a6

    goto :goto_b0

    .line 292
    :cond_a6
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v8, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 293
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 294
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto/16 :goto_115

    .line 284
    :cond_b0
    :goto_b0
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 285
    div-float/2addr v2, p5

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 286
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v8, v2

    float-to-int v2, v8

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 288
    or-int/lit8 v0, v0, 0x20

    .line 290
    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    goto :goto_115

    .line 143
    .end local v1    # "EXPANDABLE":I
    .end local v3    # "LARGE_SCREENS":I
    .end local v4    # "XLARGE_SCREENS":I
    .end local v5    # "sizeInfo":I
    .end local v6    # "anyResizeable":Z
    .end local v7    # "density":I
    :cond_c5
    :goto_c5
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v1, :cond_cc

    .line 144
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    goto :goto_ce

    .line 145
    :cond_cc
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_ce
    nop

    .line 146
    .local v1, "required":I
    if-nez v1, :cond_d3

    .line 147
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 149
    :cond_d3
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v3, :cond_da

    .line 150
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_db

    :cond_da
    move v3, v1

    .line 151
    .local v3, "compat":I
    :goto_db
    if-ge v3, v1, :cond_de

    .line 152
    move v3, v1

    .line 154
    :cond_de
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 156
    .local v4, "largest":I
    const/16 v5, 0x140

    if-le v1, v5, :cond_e7

    .line 163
    or-int/lit8 v0, v0, 0x4

    goto :goto_f7

    .line 164
    :cond_e7
    if-eqz v4, :cond_ee

    if-le p3, v4, :cond_ee

    .line 168
    or-int/lit8 v0, v0, 0xa

    goto :goto_f7

    .line 169
    :cond_ee
    if-lt v3, p3, :cond_f3

    .line 172
    or-int/lit8 v0, v0, 0x4

    goto :goto_f7

    .line 173
    :cond_f3
    if-eqz p4, :cond_f7

    .line 176
    or-int/lit8 v0, v0, 0x8

    .line 178
    :cond_f7
    :goto_f7
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v5

    .line 179
    .local v5, "density":I
    if-eqz v5, :cond_10c

    .line 180
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 181
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    iput v6, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 182
    div-float/2addr v2, v6

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 183
    or-int/lit8 v0, v0, 0x1

    goto :goto_114

    .line 186
    :cond_10c
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v6, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 187
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 188
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 191
    .end local v1    # "required":I
    .end local v3    # "compat":I
    .end local v4    # "largest":I
    .end local v5    # "density":I
    :goto_114
    nop

    .line 298
    :goto_115
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCompatibilityFlags - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompatibilityInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicationDensity - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicationScale - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    nop

    :pswitch_data_166
    .packed-switch 0x3
        :pswitch_5f
        :pswitch_51
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/CompatibilityInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 726
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-r computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .registers 15
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .line 603
    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 604
    .local v0, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 606
    .local v1, "height":I
    if-ge v0, v1, :cond_9

    .line 607
    move v2, v0

    .line 608
    .local v2, "shortSize":I
    move v3, v1

    .local v3, "longSize":I
    goto :goto_b

    .line 610
    .end local v2    # "shortSize":I
    .end local v3    # "longSize":I
    :cond_9
    move v2, v1

    .line 611
    .restart local v2    # "shortSize":I
    move v3, v0

    .line 613
    .restart local v3    # "longSize":I
    :goto_b
    const/high16 v4, 0x43a00000    # 320.0f

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 614
    .local v5, "newShortSize":I
    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 615
    .local v6, "aspect":F
    const v7, 0x3fe3bbbc

    cmpl-float v7, v6, v7

    if-lez v7, :cond_21

    .line 616
    const v6, 0x3fe3bbbc

    .line 618
    :cond_21
    int-to-float v7, v5

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    .line 620
    .local v4, "newLongSize":I
    if-ge v0, v1, :cond_2a

    .line 621
    move v7, v5

    .line 622
    .local v7, "newWidth":I
    move v8, v4

    .local v8, "newHeight":I
    goto :goto_2c

    .line 624
    .end local v7    # "newWidth":I
    .end local v8    # "newHeight":I
    :cond_2a
    move v7, v4

    .line 625
    .restart local v7    # "newWidth":I
    move v8, v5

    .line 628
    .restart local v8    # "newHeight":I
    :goto_2c
    int-to-float v9, v0

    int-to-float v10, v7

    div-float/2addr v9, v10

    .line 629
    .local v9, "sw":F
    int-to-float v10, v1

    int-to-float v11, v8

    div-float/2addr v10, v11

    .line 630
    .local v10, "sh":F
    cmpg-float v11, v9, v10

    if-gez v11, :cond_38

    move v11, v9

    goto :goto_39

    :cond_38
    move v11, v10

    .line 631
    .local v11, "scale":F
    :goto_39
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_41

    .line 632
    const/high16 v11, 0x3f800000    # 1.0f

    .line 635
    :cond_41
    if-eqz p1, :cond_47

    .line 636
    iput v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 637
    iput v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 640
    :cond_47
    return v11
.end method


# virtual methods
.method public greylist-max-o alwaysSupportsScreen()Z
    .registers 2

    .line 338
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

.method public greylist-max-o applyToConfiguration(ILandroid/content/res/Configuration;)V
    .registers 6
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 565
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 569
    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 572
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 573
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 574
    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 576
    :cond_1a
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 578
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/GMSDownscaleStub;->adapterToEmbeddingConfiguration(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 579
    return-void

    .line 582
    :cond_27
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 583
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 584
    .local v0, "invertedRatio":F
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 585
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 586
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 587
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 588
    .local v1, "appBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_56

    .line 589
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 592
    .end local v0    # "invertedRatio":F
    .end local v1    # "appBounds":Landroid/graphics/Rect;
    :cond_56
    return-void
.end method

.method public greylist-max-o applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .line 540
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_a

    .line 543
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    goto :goto_12

    .line 545
    :cond_a
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 546
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 549
    :goto_12
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 550
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 551
    .local v0, "invertedRatio":F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 552
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 553
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 554
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 555
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 556
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 557
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 560
    .end local v0    # "invertedRatio":F
    :cond_48
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/GMSDownscaleStub;->applyToDisplayMetricsForDownscale(Landroid/util/DisplayMetrics;)V

    .line 562
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 696
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 645
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 646
    return v0

    .line 649
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    move-object v2, p1

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    .line 650
    .local v2, "oc":Landroid/content/res/CompatibilityInfo;
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v3, v4, :cond_f

    return v1

    .line 651
    :cond_f
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v3, v4, :cond_16

    return v1

    .line 652
    :cond_16
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1f

    return v1

    .line 653
    :cond_1f
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_23} :catch_29

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_28

    return v1

    .line 654
    :cond_28
    return v0

    .line 655
    .end local v2    # "oc":Landroid/content/res/CompatibilityInfo;
    :catch_29
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public greylist getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .line 351
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

.method public whitelist test-api hashCode()I
    .registers 4

    .line 686
    const/16 v0, 0x11

    .line 687
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/2addr v1, v2

    .line 688
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v0, v2

    .line 689
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 690
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 691
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist isScalingRequired()Z
    .registers 2

    .line 325
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x21

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist miuiDownscaleRequired()Z
    .registers 3

    .line 52
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o needsCompatResources()Z
    .registers 2

    .line 342
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

    .line 334
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

    .line 330
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

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 663
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 667
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 669
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_38

    .line 672
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :cond_38
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 675
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    :cond_43
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 678
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_4e
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 701
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 704
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 705
    return-void
.end method
