.class public Landroid/hardware/Camera$Area;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist rect:Landroid/graphics/Rect;

.field public whitelist weight:I


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Rect;I)V
    .registers 3

    .line 2232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2233
    iput-object p1, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 2234
    iput p2, p0, Landroid/hardware/Camera$Area;->weight:I

    .line 2235
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2245
    instance-of v0, p1, Landroid/hardware/Camera$Area;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2246
    return v1

    .line 2248
    :cond_6
    check-cast p1, Landroid/hardware/Camera$Area;

    .line 2249
    iget-object v0, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_11

    .line 2250
    iget-object v0, p1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1c

    return v1

    .line 2252
    :cond_11
    iget-object v0, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 2254
    :cond_1c
    iget v0, p0, Landroid/hardware/Camera$Area;->weight:I

    iget p1, p1, Landroid/hardware/Camera$Area;->weight:I

    if-ne v0, p1, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method
