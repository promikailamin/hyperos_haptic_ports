.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;
.source "DrawSector.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawSector"

.field private static final blacklist OP_CODE:I = 0x34


# direct methods
.method public constructor blacklist <init>(FFFFFF)V
    .registers 7

    .line 119
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;-><init>(FFFFFF)V

    .line 120
    move-object p1, p0

    const-string p2, "DrawSector"

    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->mName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V
    .registers 8

    .line 73
    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 76
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 77
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 78
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 79
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 80
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 100
    const/16 v0, 0x34

    const-string v1, "DrawSector"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 101
    const-string v0, "Draw the specified sector (pie shape)which will be scaled to fit inside the specified oval"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 104
    const/4 v0, 0x1

    const-string v1, "left"

    const-string v2, "The left side of the Oval"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 105
    const-string/jumbo v1, "top"

    const-string v2, "The top of the Oval"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 106
    const-string/jumbo v1, "right"

    const-string v2, "The right side of the Oval"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 107
    const-string v1, "bottom"

    const-string v2, "The bottom of the Oval"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 108
    const-string/jumbo v1, "startAngle"

    const-string v2, "Starting angle (in degrees) where the arc begins"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 112
    const-string/jumbo v1, "sweepAngle"

    const-string v2, "Sweep angle (in degrees) measured clockwise"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 116
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 51
    const/16 v0, 0x34

    return v0
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

    .line 41
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector$$ExternalSyntheticLambda0;-><init>()V

    .line 42
    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;)V

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 9

    .line 125
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->mV1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->mV2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->mV3:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->mV4:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->mV5:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->mV6:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawSector(FFFFFF)V

    .line 126
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 10

    .line 130
    const-string/jumbo v6, "startAngle"

    const-string/jumbo v7, "sweepAngle"

    const-string v2, "left"

    const-string/jumbo v3, "top"

    const-string/jumbo v4, "right"

    const-string v5, "bottom"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 131
    const-string v0, "DrawSector"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 132
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V
    .registers 8

    .line 91
    invoke-static/range {p1 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 92
    return-void
.end method
