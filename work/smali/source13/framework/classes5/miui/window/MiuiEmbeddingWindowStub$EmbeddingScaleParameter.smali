.class public final Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;
.super Ljava/lang/Object;
.source "MiuiEmbeddingWindowStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/window/MiuiEmbeddingWindowStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbeddingScaleParameter"
.end annotation


# instance fields
.field public final blacklist bounds:Landroid/graphics/Rect;

.field public blacklist scale:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->scale:F

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->bounds:Landroid/graphics/Rect;

    .line 137
    return-void
.end method


# virtual methods
.method public blacklist reset()V
    .registers 2

    .line 145
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->scale:F

    .line 146
    iget-object v0, p0, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 147
    return-void
.end method

.method public blacklist set(Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;)V
    .registers 4
    .param p1, "parameter"    # Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    .line 140
    iget v0, p1, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->scale:F

    iput v0, p0, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->scale:F

    .line 141
    iget-object v0, p0, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->bounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 142
    return-void
.end method
