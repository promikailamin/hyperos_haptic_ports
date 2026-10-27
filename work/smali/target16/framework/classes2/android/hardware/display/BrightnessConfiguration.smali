.class public final Landroid/hardware/display/BrightnessConfiguration;
.super Ljava/lang/Object;
.source "BrightnessConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final blacklist ATTR_COLLECT_COLOR:Ljava/lang/String; = "collect-color"

.field private static final blacklist ATTR_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final blacklist ATTR_LUX:Ljava/lang/String; = "lux"

.field private static final blacklist ATTR_MODEL_LOWER_BOUND:Ljava/lang/String; = "model-lower-bound"

.field private static final blacklist ATTR_MODEL_TIMEOUT:Ljava/lang/String; = "model-timeout"

.field private static final blacklist ATTR_MODEL_UPPER_BOUND:Ljava/lang/String; = "model-upper-bound"

.field private static final blacklist ATTR_NITS:Ljava/lang/String; = "nits"

.field private static final blacklist ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SHORT_TERM_TIMEOUT_UNSET:J = -0x1L

.field private static final blacklist TAG_BRIGHTNESS_CORRECTION:Ljava/lang/String; = "brightness-correction"

.field private static final blacklist TAG_BRIGHTNESS_CORRECTIONS:Ljava/lang/String; = "brightness-corrections"

.field private static final blacklist TAG_BRIGHTNESS_CURVE:Ljava/lang/String; = "brightness-curve"

.field private static final blacklist TAG_BRIGHTNESS_PARAMS:Ljava/lang/String; = "brightness-params"

.field private static final blacklist TAG_BRIGHTNESS_POINT:Ljava/lang/String; = "brightness-point"


# instance fields
.field private final blacklist mCorrectionsByCategory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCorrectionsByPackageName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDescription:Ljava/lang/String;

.field private final greylist-max-o mLux:[F

.field private final greylist-max-o mNits:[F

.field private final blacklist mShortTermModelLowerLuxMultiplier:F

.field private final blacklist mShortTermModelTimeout:J

.field private final blacklist mShortTermModelUpperLuxMultiplier:F

.field private final blacklist mShouldCollectColorSamples:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 300
    new-instance v0, Landroid/hardware/display/BrightnessConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFF)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;",
            "Ljava/lang/String;",
            "ZJFF)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    .line 87
    iput-object p2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    .line 88
    iput-object p3, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    .line 89
    iput-object p4, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    .line 90
    iput-object p5, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    .line 91
    iput-boolean p6, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    .line 92
    iput-wide p7, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    .line 93
    iput p9, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    .line 94
    iput p10, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    .line 95
    return-void
.end method

.method synthetic constructor blacklist <init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFFLandroid/hardware/display/BrightnessConfiguration-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/hardware/display/BrightnessConfiguration;-><init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFF)V

    return-void
.end method

.method private blacklist checkFloatEquals(FF)Z
    .registers 5

    .line 294
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 295
    return v1

    .line 297
    :cond_e
    cmpl-float p1, p1, p2

    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private static blacklist loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F
    .registers 4

    .line 489
    const/4 v0, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-interface {p0, v0, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static blacklist loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 412
    move-object/from16 v0, p0

    .line 413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 415
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 416
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 417
    nop

    .line 418
    nop

    .line 419
    nop

    .line 420
    nop

    .line 421
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    const/high16 v10, 0x7fc00000    # Float.NaN

    move-object v12, v6

    move v11, v10

    const/4 v13, 0x0

    .line 422
    :goto_26
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v14

    if-eqz v14, :cond_f8

    .line 423
    const-string v14, "brightness-curve"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_71

    .line 424
    const-string v12, "description"

    invoke-interface {v0, v6, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 425
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v14

    .line 426
    :goto_42
    invoke-static {v0, v14}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v15

    if-eqz v15, :cond_70

    .line 427
    const-string v15, "brightness-point"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 428
    goto :goto_42

    .line 430
    :cond_55
    const-string v7, "lux"

    invoke-static {v0, v7}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v7

    .line 431
    const-string v15, "nits"

    invoke-static {v0, v15}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v15

    .line 432
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    goto :goto_42

    .line 435
    :cond_70
    goto :goto_26

    :cond_71
    const-string v7, "brightness-corrections"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bf

    .line 436
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    .line 437
    :goto_81
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v14

    if-eqz v14, :cond_ba

    .line 438
    const-string v14, "brightness-correction"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_94

    .line 439
    goto :goto_81

    .line 441
    :cond_94
    const-string v14, "package-name"

    invoke-interface {v0, v6, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 442
    const-string v15, "category"

    move/from16 v16, v5

    const/4 v5, -0x1

    invoke-interface {v0, v6, v15, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 443
    invoke-static {v0}, Landroid/hardware/display/BrightnessCorrection;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v6

    .line 444
    if-eqz v14, :cond_ad

    .line 445
    invoke-interface {v3, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b6

    .line 446
    :cond_ad
    if-eq v15, v5, :cond_b6

    .line 447
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_b6
    :goto_b6
    move/from16 v5, v16

    const/4 v6, 0x0

    goto :goto_81

    .line 450
    :cond_ba
    move/from16 v16, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_f4

    :cond_bf
    move/from16 v16, v5

    const-string v5, "brightness-params"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 451
    nop

    .line 452
    const-string v5, "collect-color"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v6, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    .line 453
    const-string v5, "model-timeout"

    invoke-static {v0, v5}, Landroid/hardware/display/BrightnessConfiguration;->loadLongFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 454
    if-eqz v5, :cond_e2

    .line 455
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 457
    :cond_e2
    const-string v5, "model-lower-bound"

    invoke-static {v0, v5}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v10

    .line 458
    const-string v5, "model-upper-bound"

    invoke-static {v0, v5}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v11

    .line 459
    move/from16 v5, v16

    goto/16 :goto_26

    .line 450
    :cond_f2
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 422
    :goto_f4
    move/from16 v5, v16

    goto/16 :goto_26

    .line 461
    :cond_f8
    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 462
    new-array v5, v0, [F

    .line 463
    new-array v6, v0, [F

    .line 464
    nop

    :goto_102
    if-ge v7, v0, :cond_11f

    .line 465
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    aput v14, v5, v7

    .line 466
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    aput v14, v6, v7

    .line 464
    add-int/lit8 v7, v7, 0x1

    goto :goto_102

    .line 468
    :cond_11f
    new-instance v0, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v0, v5, v6}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 470
    invoke-virtual {v0, v12}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 471
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 472
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 473
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessCorrection;

    .line 474
    invoke-virtual {v0, v3, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->addCorrectionByPackageName(Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 475
    goto :goto_12f

    .line 476
    :cond_14b
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_153
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_173

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 477
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 478
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessCorrection;

    .line 479
    invoke-virtual {v0, v3, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->addCorrectionByCategory(ILandroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 480
    goto :goto_153

    .line 481
    :cond_173
    invoke-virtual {v0, v13}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShouldCollectColorSamples(Z)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 482
    invoke-virtual {v0, v8, v9}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 483
    invoke-virtual {v0, v10}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 484
    invoke-virtual {v0, v11}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 485
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist loadLongFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    .line 494
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object p0

    .line 495
    :catch_a
    move-exception p0

    .line 496
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 274
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 275
    return v0

    .line 277
    :cond_4
    instance-of v1, p1, Landroid/hardware/display/BrightnessConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 278
    return v2

    .line 280
    :cond_a
    check-cast p1, Landroid/hardware/display/BrightnessConfiguration;

    .line 281
    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    iget-object v3, p1, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    iget-object v3, p1, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    iget-object v3, p1, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    .line 282
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    iget-object v3, p1, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    .line 283
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    .line 284
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-boolean v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    iget-boolean v3, p1, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    if-ne v1, v3, :cond_61

    iget-wide v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    iget-wide v5, p1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_61

    iget v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    iget v3, p1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    .line 287
    invoke-direct {p0, v1, v3}, Landroid/hardware/display/BrightnessConfiguration;->checkFloatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_61

    iget v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    iget p1, p1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    .line 289
    invoke-direct {p0, v1, p1}, Landroid/hardware/display/BrightnessConfiguration;->checkFloatEquals(FF)Z

    move-result p1

    if-eqz p1, :cond_61

    goto :goto_62

    :cond_61
    move v0, v2

    .line 281
    :goto_62
    return v0
.end method

.method public whitelist getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;
    .registers 3

    .line 134
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/BrightnessCorrection;

    return-object p1
.end method

.method public whitelist getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;
    .registers 3

    .line 121
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/BrightnessCorrection;

    return-object p1
.end method

.method public whitelist getCurve()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDescription()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getShortTermModelLowerLuxMultiplier()F
    .registers 2

    .line 186
    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    return v0
.end method

.method public whitelist getShortTermModelTimeoutMillis()J
    .registers 3

    .line 162
    iget-wide v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    return-wide v0
.end method

.method public whitelist getShortTermModelUpperLuxMultiplier()F
    .registers 2

    .line 174
    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 257
    nop

    .line 258
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 259
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 260
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 261
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 262
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_2f

    .line 263
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 265
    :cond_2f
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 266
    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 268
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    return v0
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    const-string v1, "brightness-curve"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 349
    const-string v2, "description"

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    :cond_11
    const/4 v2, 0x0

    :goto_12
    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v3, v3

    if-ge v2, v3, :cond_34

    .line 352
    const-string v3, "brightness-point"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    aget v4, v4, v2

    const-string v5, "lux"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    aget v4, v4, v2

    const-string v5, "nits"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 357
    :cond_34
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    const-string v1, "brightness-corrections"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "brightness-correction"

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 362
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 363
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/BrightnessCorrection;

    .line 364
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    const-string v6, "package-name"

    invoke-interface {p1, v0, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    invoke-virtual {v3, p1}, Landroid/hardware/display/BrightnessCorrection;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 367
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    goto :goto_46

    .line 369
    :cond_6f
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 370
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 371
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/BrightnessCorrection;

    .line 372
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    const-string v6, "category"

    invoke-interface {p1, v0, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    invoke-virtual {v3, p1}, Landroid/hardware/display/BrightnessCorrection;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 375
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    goto :goto_79

    .line 377
    :cond_a4
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    const-string v1, "brightness-params"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    iget-boolean v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    if-eqz v2, :cond_b6

    .line 381
    const-string v2, "collect-color"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    :cond_b6
    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_c5

    .line 384
    const-string v2, "model-timeout"

    iget-wide v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    :cond_c5
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_d4

    .line 387
    const-string v2, "model-lower-bound"

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 390
    :cond_d4
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_e3

    .line 391
    const-string v2, "model-upper-bound"

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    :cond_e3
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    return-void
.end method

.method public whitelist shouldCollectColorSamples()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrightnessConfiguration{["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v1, v1

    .line 224
    const/4 v2, 0x0

    :goto_b
    const-string v3, ", "

    if-ge v2, v1, :cond_36

    .line 225
    if-eqz v2, :cond_14

    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_14
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 230
    :cond_36
    const-string v1, "], {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    goto :goto_45

    .line 234
    :cond_80
    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    goto :goto_8a

    .line 237
    :cond_bd
    const-string v1, "}, \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_cb

    .line 239
    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_cb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", shouldCollectColorSamples = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-wide v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_103

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", shortTermModelTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_103
    iget v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_123

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", shortTermModelLowerLuxMultiplier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_123
    iget v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_143

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", shortTermModelUpperLuxMultiplier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_143
    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 191
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 192
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 193
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/BrightnessCorrection;

    .line 197
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/BrightnessCorrection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 199
    goto :goto_1d

    .line 200
    :cond_3c
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 203
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/BrightnessCorrection;

    .line 204
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/BrightnessCorrection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    goto :goto_4f

    .line 207
    :cond_72
    iget-object p2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-boolean p2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 209
    iget-wide v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 210
    iget p2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 211
    iget p2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 212
    return-void
.end method
