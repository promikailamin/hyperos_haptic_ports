.class public Landroid/graphics/ComposePathEffect;
.super Landroid/graphics/PathEffect;
.source "ComposePathEffect.java"


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 27
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    iget-wide p1, p2, Landroid/graphics/PathEffect;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ComposePathEffect;->nativeCreate(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/ComposePathEffect;->native_instance:J

    .line 29
    return-void
.end method

.method private static native greylist-max-o nativeCreate(JJ)J
.end method
