.class public Landroid/graphics/BlurMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "BlurMaskFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BlurMaskFilter$Blur;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>(FLandroid/graphics/BlurMaskFilter$Blur;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    .line 63
    iget p2, p2, Landroid/graphics/BlurMaskFilter$Blur;->native_int:I

    invoke-static {p1, p2}, Landroid/graphics/BlurMaskFilter;->nativeConstructor(FI)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/BlurMaskFilter;->native_instance:J

    .line 64
    return-void
.end method

.method private static native greylist-max-o nativeConstructor(FI)J
.end method
