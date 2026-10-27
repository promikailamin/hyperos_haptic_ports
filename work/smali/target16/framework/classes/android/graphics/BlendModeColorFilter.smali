.class public final Landroid/graphics/BlendModeColorFilter;
.super Landroid/graphics/ColorFilter;
.source "BlendModeColorFilter.java"


# instance fields
.field final blacklist mColor:I

.field private final blacklist mMode:Landroid/graphics/BlendMode;


# direct methods
.method public constructor whitelist <init>(ILandroid/graphics/BlendMode;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 33
    iput p1, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    .line 34
    iput-object p2, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    .line 35
    return-void
.end method

.method private static native blacklist native_CreateBlendModeFilter(II)J
.end method


# virtual methods
.method blacklist createNativeInstance()J
    .registers 3

    .line 63
    iget v0, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    iget-object v1, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    invoke-virtual {v1}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0, v1}, Landroid/graphics/BlendModeColorFilter;->native_CreateBlendModeFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 68
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 69
    return v0

    .line 71
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 74
    :cond_12
    check-cast p1, Landroid/graphics/BlendModeColorFilter;

    .line 75
    iget-object v2, p1, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    iget-object v3, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    if-ne v2, v3, :cond_21

    iget p1, p1, Landroid/graphics/BlendModeColorFilter;->mColor:I

    iget v2, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    if-ne p1, v2, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0

    .line 72
    :cond_23
    :goto_23
    return v1
.end method

.method public whitelist getColor()I
    .registers 2

    .line 47
    iget v0, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    return v0
.end method

.method public whitelist getMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 80
    iget-object v0, p0, Landroid/graphics/BlendModeColorFilter;->mMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0}, Landroid/graphics/BlendMode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    add-int/2addr v0, v1

    return v0
.end method
