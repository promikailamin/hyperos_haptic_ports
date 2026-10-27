.class public Lcom/android/internal/widget/DisableImageView;
.super Landroid/widget/ImageView;
.source "DisableImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/DisableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/DisableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/DisableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 51
    nop

    .line 52
    const/high16 p2, 0x42ff0000    # 127.5f

    float-to-int p2, p2

    .line 54
    nop

    .line 55
    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p3

    .line 56
    const/4 p4, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    aput v0, p3, p4

    .line 57
    const/4 p4, 0x6

    aput v0, p3, p4

    .line 58
    const/16 p4, 0xc

    aput v0, p3, p4

    .line 59
    int-to-float p2, p2

    const/4 p4, 0x4

    aput p2, p3, p4

    .line 60
    const/16 p4, 0x9

    aput p2, p3, p4

    .line 61
    const/16 p4, 0xe

    aput p2, p3, p4

    .line 63
    new-instance p2, Landroid/graphics/ColorMatrix;

    invoke-direct {p2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 64
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 65
    invoke-virtual {p2, p1}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 66
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DisableImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 67
    return-void
.end method
