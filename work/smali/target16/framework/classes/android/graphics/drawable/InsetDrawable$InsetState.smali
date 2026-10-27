.class final Landroid/graphics/drawable/InsetDrawable$InsetState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "InsetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InsetState"
.end annotation


# instance fields
.field greylist-max-o mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field greylist-max-o mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field greylist-max-o mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field greylist-max-o mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/InsetDrawable$InsetState;[I)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .registers 4

    .line 327
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 329
    if-eqz p1, :cond_33

    .line 330
    iget-object p2, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 331
    iget-object p2, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 332
    iget-object p2, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 333
    iget-object p2, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 335
    iget p2, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    if-eq p2, v0, :cond_4f

    .line 336
    iget p1, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    iget p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    goto :goto_4f

    .line 339
    :cond_33
    new-instance p1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 340
    new-instance p1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 341
    new-instance p1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 342
    new-instance p1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 344
    :cond_4f
    :goto_4f
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .registers 4

    .line 361
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 362
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 363
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 364
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 365
    return-void
.end method


# virtual methods
.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 372
    if-eqz p1, :cond_18

    .line 373
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 374
    if-nez v0, :cond_c

    const/16 v0, 0xa0

    .line 375
    :cond_c
    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    if-eq v0, v1, :cond_16

    .line 376
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    goto :goto_17

    .line 378
    :cond_16
    move-object v0, p0

    .line 380
    :goto_17
    goto :goto_19

    .line 381
    :cond_18
    move-object v0, p0

    .line 384
    :goto_19
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable-IA;)V

    return-object v1
.end method

.method greylist-max-o onDensityChanged(II)V
    .registers 3

    .line 348
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->onDensityChanged(II)V

    .line 350
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    .line 351
    return-void
.end method
