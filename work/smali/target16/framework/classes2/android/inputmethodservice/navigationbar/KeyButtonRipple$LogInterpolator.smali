.class final Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator;
.super Ljava/lang/Object;
.source "KeyButtonRipple.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogInterpolator"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .registers 6

    .line 527
    neg-float p1, p1

    float-to-double v0, p1

    const-wide v2, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0
.end method
