.class Landroid/animation/PropertyValuesHolder$PointFToFloatArray;
.super Landroid/animation/TypeConverter;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointFToFloatArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/animation/TypeConverter<",
        "Landroid/graphics/PointF;",
        "[F>;"
    }
.end annotation


# instance fields
.field private greylist-max-o mCoordinates:[F


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 1668
    const-class v0, Landroid/graphics/PointF;

    const-class v1, [F

    invoke-direct {p0, v0, v1}, Landroid/animation/TypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1665
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    .line 1669
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1664
    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->convert(Landroid/graphics/PointF;)[F

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o convert(Landroid/graphics/PointF;)[F
    .registers 5
    .param p1, "value"    # Landroid/graphics/PointF;

    .line 1673
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1674
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1675
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    return-object v0
.end method
