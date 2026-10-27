.class public Landroid/view/animation/SpringInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "SpringInterpolator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field private static final blacklist DEFAULT_DAMPING:F = 0.95f

.field private static final blacklist DEFAULT_RESPONSE:F = 0.6f


# instance fields
.field private blacklist c:F

.field private blacklist c1:F

.field private blacklist c2:F

.field private blacklist damping:F

.field private blacklist initial:F

.field private blacklist k:F

.field private blacklist m:F

.field private blacklist r:F

.field private blacklist response:F

.field private blacklist w:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 10

    .line 31
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 17
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    .line 18
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    .line 19
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    .line 21
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->m:F

    .line 22
    float-to-double v2, v1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Landroid/view/animation/SpringInterpolator;->m:F

    float-to-double v5, v4

    mul-double/2addr v2, v5

    double-to-float v2, v2

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->k:F

    .line 23
    iget v3, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    float-to-double v5, v3

    const-wide v7, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v5, v7

    float-to-double v7, v4

    mul-double/2addr v5, v7

    iget v3, p0, Landroid/view/animation/SpringInterpolator;->response:F

    float-to-double v7, v3

    div-double/2addr v5, v7

    double-to-float v3, v5

    iput v3, p0, Landroid/view/animation/SpringInterpolator;->c:F

    .line 25
    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    mul-float/2addr v3, v3

    sub-float/2addr v4, v3

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Landroid/view/animation/SpringInterpolator;->m:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    div-float/2addr v2, v5

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->w:F

    .line 26
    iget v5, p0, Landroid/view/animation/SpringInterpolator;->c:F

    div-float/2addr v5, v4

    mul-float/2addr v5, v3

    neg-float v3, v5

    iput v3, p0, Landroid/view/animation/SpringInterpolator;->r:F

    .line 27
    iget v4, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    iput v4, p0, Landroid/view/animation/SpringInterpolator;->c1:F

    .line 28
    mul-float/2addr v3, v4

    const/4 v4, 0x0

    sub-float/2addr v4, v3

    div-float/2addr v4, v2

    iput v4, p0, Landroid/view/animation/SpringInterpolator;->c2:F

    .line 32
    iput v0, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    .line 33
    iput v1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    .line 34
    invoke-direct {p0}, Landroid/view/animation/SpringInterpolator;->refreshParams()V

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(FF)V
    .registers 10
    .param p1, "damping"    # F
    .param p2, "response"    # F

    .line 37
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 17
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    .line 18
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->response:F

    .line 19
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->m:F

    .line 22
    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->m:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->k:F

    .line 23
    iget v1, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    float-to-double v3, v1

    const-wide v5, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v3, v5

    float-to-double v5, v2

    mul-double/2addr v3, v5

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    float-to-double v5, v1

    div-double/2addr v3, v5

    double-to-float v1, v3

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->c:F

    .line 25
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    mul-float/2addr v1, v1

    sub-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->w:F

    .line 26
    iget v3, p0, Landroid/view/animation/SpringInterpolator;->c:F

    div-float/2addr v3, v2

    mul-float/2addr v3, v1

    neg-float v1, v3

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->r:F

    .line 27
    iget v2, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->c1:F

    .line 28
    mul-float/2addr v1, v2

    const/4 v2, 0x0

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->c2:F

    .line 38
    iput p1, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    .line 39
    iput p2, p0, Landroid/view/animation/SpringInterpolator;->response:F

    .line 40
    invoke-direct {p0}, Landroid/view/animation/SpringInterpolator;->refreshParams()V

    .line 41
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/SpringInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 17
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    .line 18
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->response:F

    .line 19
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->m:F

    .line 22
    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->m:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->k:F

    .line 23
    iget v1, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    float-to-double v3, v1

    const-wide v5, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v3, v5

    float-to-double v5, v2

    mul-double/2addr v3, v5

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    float-to-double v5, v1

    div-double/2addr v3, v5

    double-to-float v1, v3

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->c:F

    .line 25
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    mul-float/2addr v1, v1

    sub-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->w:F

    .line 26
    iget v3, p0, Landroid/view/animation/SpringInterpolator;->c:F

    div-float/2addr v3, v2

    mul-float/2addr v3, v1

    neg-float v1, v3

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->r:F

    .line 27
    iget v2, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->c1:F

    .line 28
    mul-float/2addr v1, v2

    const/4 v2, 0x0

    sub-float v1, v2, v1

    div-float/2addr v1, v0

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->c2:F

    .line 58
    const-string v0, "http://schemas.android.com/apk/res-auto"

    .line 59
    .local v0, "APP_RES":Ljava/lang/String;
    const-string v1, "springDamping"

    invoke-interface {p3, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    .line 60
    .local v1, "springDamping":F
    const-string v3, "springResponse"

    invoke-interface {p3, v0, v3, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    .line 61
    .local v3, "springResponse":F
    cmpl-float v4, v1, v2

    if-eqz v4, :cond_7c

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_7c

    .line 62
    iput v1, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    .line 63
    iput v3, p0, Landroid/view/animation/SpringInterpolator;->response:F

    .line 65
    :cond_7c
    invoke-direct {p0}, Landroid/view/animation/SpringInterpolator;->refreshParams()V

    .line 66
    return-void
.end method

.method private blacklist refreshParams()V
    .registers 8

    .line 94
    iget v0, p0, Landroid/view/animation/SpringInterpolator;->response:F

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->m:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->k:F

    .line 95
    iget v1, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    float-to-double v3, v1

    const-wide v5, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v3, v5

    float-to-double v5, v2

    mul-double/2addr v3, v5

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    float-to-double v5, v1

    div-double/2addr v3, v5

    double-to-float v1, v3

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->c:F

    .line 96
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    mul-float/2addr v1, v1

    sub-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Landroid/view/animation/SpringInterpolator;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    iput v0, p0, Landroid/view/animation/SpringInterpolator;->w:F

    .line 97
    iget v3, p0, Landroid/view/animation/SpringInterpolator;->c:F

    div-float/2addr v3, v2

    mul-float/2addr v3, v1

    neg-float v1, v3

    iput v1, p0, Landroid/view/animation/SpringInterpolator;->r:F

    .line 98
    iget v2, p0, Landroid/view/animation/SpringInterpolator;->initial:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    iput v2, p0, Landroid/view/animation/SpringInterpolator;->c2:F

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist getDamping()F
    .registers 2

    .line 74
    iget v0, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    return v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 10
    .param p1, "input"    # F

    .line 69
    iget v0, p0, Landroid/view/animation/SpringInterpolator;->r:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    .line 70
    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Landroid/view/animation/SpringInterpolator;->c1:F

    float-to-double v2, v2

    iget v4, p0, Landroid/view/animation/SpringInterpolator;->w:F

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Landroid/view/animation/SpringInterpolator;->c2:F

    float-to-double v4, v4

    iget v6, p0, Landroid/view/animation/SpringInterpolator;->w:F

    mul-float/2addr v6, p1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 69
    return v0
.end method

.method public whitelist getResponse()F
    .registers 2

    .line 78
    iget v0, p0, Landroid/view/animation/SpringInterpolator;->response:F

    return v0
.end method

.method public whitelist setDamping(F)Landroid/view/animation/SpringInterpolator;
    .registers 2
    .param p1, "damping"    # F

    .line 82
    iput p1, p0, Landroid/view/animation/SpringInterpolator;->damping:F

    .line 83
    invoke-direct {p0}, Landroid/view/animation/SpringInterpolator;->refreshParams()V

    .line 84
    return-object p0
.end method

.method public whitelist setResponse(F)Landroid/view/animation/SpringInterpolator;
    .registers 2
    .param p1, "response"    # F

    .line 88
    iput p1, p0, Landroid/view/animation/SpringInterpolator;->response:F

    .line 89
    invoke-direct {p0}, Landroid/view/animation/SpringInterpolator;->refreshParams()V

    .line 90
    return-object p0
.end method
