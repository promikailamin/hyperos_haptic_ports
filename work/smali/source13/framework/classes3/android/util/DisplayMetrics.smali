.class public Landroid/util/DisplayMetrics;
.super Ljava/lang/Object;
.source "DisplayMetrics.java"


# static fields
.field public static final whitelist DENSITY_140:I = 0x8c

.field public static final whitelist DENSITY_180:I = 0xb4

.field public static final whitelist DENSITY_200:I = 0xc8

.field public static final whitelist DENSITY_220:I = 0xdc

.field public static final whitelist DENSITY_260:I = 0x104

.field public static final whitelist DENSITY_280:I = 0x118

.field public static final whitelist DENSITY_300:I = 0x12c

.field public static final whitelist DENSITY_340:I = 0x154

.field public static final whitelist DENSITY_360:I = 0x168

.field public static final whitelist DENSITY_400:I = 0x190

.field public static final whitelist DENSITY_420:I = 0x1a4

.field public static final whitelist DENSITY_440:I = 0x1b8

.field public static final whitelist DENSITY_450:I = 0x1c2

.field public static final whitelist DENSITY_560:I = 0x230

.field public static final whitelist DENSITY_600:I = 0x258

.field public static final whitelist DENSITY_DEFAULT:I = 0xa0

.field public static final greylist-max-o DENSITY_DEFAULT_SCALE:F = 0.00625f

.field public static greylist DENSITY_DEVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DENSITY_DEVICE_STABLE:I

.field public static final whitelist DENSITY_HIGH:I = 0xf0

.field public static final whitelist DENSITY_LOW:I = 0x78

.field public static final whitelist DENSITY_MEDIUM:I = 0xa0

.field public static final blacklist DENSITY_NXHGITH:I = 0x1b8

.field public static final whitelist DENSITY_TV:I = 0xd5

.field public static final whitelist DENSITY_XHIGH:I = 0x140

.field public static final whitelist DENSITY_XXHIGH:I = 0x1e0

.field public static final whitelist DENSITY_XXXHIGH:I = 0x280


# instance fields
.field public whitelist density:F

.field public whitelist densityDpi:I

.field public whitelist heightPixels:I

.field public greylist-max-o noncompatDensity:F

.field public greylist noncompatDensityDpi:I

.field public greylist noncompatHeightPixels:I

.field public greylist-max-o noncompatScaledDensity:F

.field public greylist noncompatWidthPixels:I

.field public greylist-max-o noncompatXdpi:F

.field public greylist-max-o noncompatYdpi:F

.field public whitelist scaledDensity:F

.field public whitelist widthPixels:I

.field public whitelist xdpi:F

.field public whitelist ydpi:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 230
    invoke-static {}, Landroid/util/DisplayMetrics;->getDeviceDensity()I

    move-result v0

    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 239
    invoke-static {}, Landroid/util/DisplayMetrics;->getDeviceDensity()I

    move-result v0

    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    return-void
.end method

.method private static greylist-max-o getDeviceDensity()I
    .registers 2

    .line 433
    nop

    .line 434
    const-string/jumbo v0, "ro.sf.lcd_density"

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 433
    const-string/jumbo v1, "qemu.sf.lcd_density"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist equals(Landroid/util/DisplayMetrics;)Z
    .registers 4
    .param p1, "other"    # Landroid/util/DisplayMetrics;

    .line 386
    invoke-virtual {p0, p1}, Landroid/util/DisplayMetrics;->equalsPhysical(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 376
    instance-of v0, p1, Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public greylist-max-o equalsPhysical(Landroid/util/DisplayMetrics;)Z
    .registers 4
    .param p1, "other"    # Landroid/util/DisplayMetrics;

    .line 401
    if-eqz p1, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v1, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v0, v1, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v1, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    if-ne v0, v1, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ne v0, v1, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    if-ne v0, v1, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    const/4 v0, 0x1

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 418
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist setTo(Landroid/util/DisplayMetrics;)V
    .registers 3
    .param p1, "o"    # Landroid/util/DisplayMetrics;

    .line 337
    if-ne p0, p1, :cond_3

    .line 338
    return-void

    .line 341
    :cond_3
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 342
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 343
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 344
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 345
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 346
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 347
    iget v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 348
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 349
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 350
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 351
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 352
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    .line 353
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    .line 354
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .line 355
    return-void
.end method

.method public whitelist setToDefaults()V
    .registers 6

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 359
    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 360
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v2, v1

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    iput v2, p0, Landroid/util/DisplayMetrics;->density:F

    .line 361
    iput v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 362
    iput v2, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 363
    int-to-float v3, v1

    iput v3, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 364
    int-to-float v4, v1

    iput v4, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 365
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 366
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 367
    iput v2, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 368
    iput v1, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 369
    iput v2, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    .line 370
    iput v3, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    .line 371
    iput v4, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .line 372
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMetrics{density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaledDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xdpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ydpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
