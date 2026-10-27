.class Landroid/util/TypedValueInjector;
.super Ljava/lang/Object;
.source "TypedValueInjector.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist miuiScale(FLandroid/util/DisplayMetrics;)F
    .registers 3
    .param p0, "value"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 5
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p0

    return v0
.end method
