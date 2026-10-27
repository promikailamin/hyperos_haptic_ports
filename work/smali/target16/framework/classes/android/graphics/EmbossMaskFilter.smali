.class public Landroid/graphics/EmbossMaskFilter;
.super Landroid/graphics/MaskFilter;
.source "EmbossMaskFilter.java"


# direct methods
.method public constructor whitelist <init>([FFFF)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-direct {p0}, Landroid/graphics/MaskFilter;-><init>()V

    .line 34
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_e

    .line 37
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/EmbossMaskFilter;->nativeConstructor([FFFF)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/EmbossMaskFilter;->native_instance:J

    .line 38
    return-void

    .line 35
    :cond_e
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private static native greylist-max-o nativeConstructor([FFFF)J
.end method
