.class public Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
.source "ClipRect.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ClipRect"

.field private static final blacklist OP_CODE:I = 0x27


# direct methods
.method public constructor blacklist <init>(FFFF)V
    .registers 5

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;-><init>(FFFF)V

    .line 98
    const-string p1, "ClipRect"

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->mName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .registers 11

    .line 116
    const/16 v1, 0x27

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V

    .line 117
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 76
    const/16 v0, 0x27

    const-string v1, "ClipRect"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 77
    const-string v0, "Intersect the current clip with rectangle"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 78
    const/4 v0, 0x1

    const-string v1, "left"

    const-string v2, "The left side of the rectangle to intersect with the current clip"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 82
    const-string/jumbo v1, "top"

    const-string v2, "The top of the rectangle to intersect with the current clip"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 86
    const-string/jumbo v1, "right"

    const-string v2, "The right side of the rectangle to intersect with the current clip"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 90
    const-string v1, "bottom"

    const-string v2, "The bottom of the rectangle to intersect with the current clip"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 94
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 52
    const/16 v0, 0x27

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 62
    const-string v0, "ClipRect"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect$$ExternalSyntheticLambda0;-><init>()V

    .line 43
    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;)V

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 6

    .line 103
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->mX1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->mY1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->mX2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->mY2:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 104
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 8

    .line 121
    const-string/jumbo v4, "right"

    const-string v5, "bottom"

    const-string v2, "left"

    const-string/jumbo v3, "top"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "ClipRect"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 122
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .registers 6

    .line 67
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 68
    return-void
.end method
