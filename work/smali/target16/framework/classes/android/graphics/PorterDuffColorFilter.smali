.class public Landroid/graphics/PorterDuffColorFilter;
.super Landroid/graphics/ColorFilter;
.source "PorterDuffColorFilter.java"


# instance fields
.field private greylist-max-o mColor:I

.field private greylist-max-o mMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor whitelist <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 43
    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    .line 44
    iput-object p2, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 45
    return-void
.end method

.method private static native blacklist native_CreateBlendModeFilter(II)J
.end method


# virtual methods
.method greylist-max-o createNativeInstance()J
    .registers 3

    .line 76
    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget-object v1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v1, v1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->native_CreateBlendModeFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 81
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 82
    return v0

    .line 84
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 87
    :cond_12
    check-cast p1, Landroid/graphics/PorterDuffColorFilter;

    .line 88
    iget v2, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget v3, p1, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v2, v2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    iget-object p1, p1, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget p1, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 85
    :cond_27
    :goto_27
    return v1
.end method

.method public greylist getColor()I
    .registers 2

    .line 58
    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    return v0
.end method

.method public greylist-max-r getMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 93
    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    add-int/2addr v0, v1

    return v0
.end method
