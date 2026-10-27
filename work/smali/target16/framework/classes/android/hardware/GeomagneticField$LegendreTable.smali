.class Landroid/hardware/GeomagneticField$LegendreTable;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/GeomagneticField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegendreTable"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field public final greylist-max-o mP:[[F

.field public final greylist-max-o mPDeriv:[[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 339
    const-class v0, Landroid/hardware/GeomagneticField;

    return-void
.end method

.method public constructor greylist-max-o <init>(IF)V
    .registers 15

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 361
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 363
    add-int/lit8 v1, p1, 0x1

    new-array v2, v1, [[F

    iput-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 364
    new-array v1, v1, [[F

    iput-object v1, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    .line 365
    iget-object v1, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    aput-object v3, v1, v5

    .line 366
    iget-object v1, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    aput-object v3, v1, v5

    .line 367
    move v1, v2

    :goto_2e
    if-gt v1, p1, :cond_e3

    .line 368
    iget-object v3, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v4, v1, 0x1

    new-array v6, v4, [F

    aput-object v6, v3, v1

    .line 369
    iget-object v3, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    new-array v6, v4, [F

    aput-object v6, v3, v1

    .line 370
    move v3, v5

    :goto_3f
    if-gt v3, v1, :cond_e0

    .line 371
    if-ne v1, v3, :cond_6a

    .line 372
    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v6, v6, v1

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v1, -0x1

    aget-object v7, v7, v8

    add-int/lit8 v9, v3, -0x1

    aget v7, v7, v9

    mul-float/2addr v7, v0

    aput v7, v6, v3

    .line 373
    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v6, v6, v1

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v7, v7, v8

    aget v7, v7, v9

    mul-float/2addr v7, p2

    iget-object v10, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v8, v10, v8

    aget v8, v8, v9

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v3

    goto :goto_dc

    .line 375
    :cond_6a
    if-eq v1, v2, :cond_b7

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_71

    goto :goto_b7

    .line 380
    :cond_71
    nop

    .line 381
    mul-int v7, v6, v6

    mul-int v8, v3, v3

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v8, -0x1

    add-int/lit8 v8, v8, -0x3

    mul-int/2addr v9, v8

    int-to-float v8, v9

    div-float/2addr v7, v8

    .line 383
    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v8, v8, v1

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v9, v9, v6

    aget v9, v9, v3

    mul-float/2addr v9, p2

    iget-object v10, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v11, v1, -0x2

    aget-object v10, v10, v11

    aget v10, v10, v3

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    aput v9, v8, v3

    .line 384
    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v8, v8, v1

    neg-float v9, v0

    iget-object v10, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v10, v10, v6

    aget v10, v10, v3

    mul-float/2addr v9, v10

    iget-object v10, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v6, v10, v6

    aget v6, v6, v3

    mul-float/2addr v6, p2

    add-float/2addr v9, v6

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v6, v6, v11

    aget v6, v6, v3

    mul-float/2addr v7, v6

    sub-float/2addr v9, v7

    aput v9, v8, v3

    goto :goto_dc

    .line 376
    :cond_b7
    :goto_b7
    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v6, v6, v1

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v8, v1, -0x1

    aget-object v7, v7, v8

    aget v7, v7, v3

    mul-float/2addr v7, p2

    aput v7, v6, v3

    .line 377
    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v6, v6, v1

    neg-float v7, v0

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v9, v9, v8

    aget v9, v9, v3

    mul-float/2addr v7, v9

    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v8, v9, v8

    aget v8, v8, v3

    mul-float/2addr v8, p2

    add-float/2addr v7, v8

    aput v7, v6, v3

    .line 370
    :goto_dc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3f

    .line 367
    :cond_e0
    move v1, v4

    goto/16 :goto_2e

    .line 389
    :cond_e3
    return-void
.end method
