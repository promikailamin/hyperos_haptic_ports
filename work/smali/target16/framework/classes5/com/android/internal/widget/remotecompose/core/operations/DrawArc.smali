.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;
.source "DrawArc.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawArc"

.field private static final blacklist OP_CODE:I = 0x98


# direct methods
.method public constructor blacklist <init>(FFFFFF)V
    .registers 7

    .line 132
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;-><init>(FFFFFF)V

    .line 133
    move-object p1, p0

    const-string p2, "DrawArc"

    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V
    .registers 8

    .line 74
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 77
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 78
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 79
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 80
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 81
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 101
    const/16 v0, 0x98

    const-string v1, "DrawArc"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 102
    const-string v0, "Draw the specified arcwhich will be scaled to fit inside the specified oval"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 105
    const/4 v0, 0x1

    const-string v1, "left"

    const-string v2, "The left side of the Oval"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 106
    const-string/jumbo v1, "top"

    const-string v2, "The top of the Oval"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 107
    const-string/jumbo v1, "right"

    const-string v2, "The right side of the Oval"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 108
    const-string v1, "bottom"

    const-string v2, "The bottom of the Oval"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 109
    const-string/jumbo v1, "startAngle"

    const-string v2, "Starting angle (in degrees) where the arc begins"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 113
    const-string/jumbo v1, "sweepAngle"

    const-string v2, "Sweep angle (in degrees) measured clockwise"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 117
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 52
    const/16 v0, 0x98

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

    .line 42
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc$$ExternalSyntheticLambda0;-><init>()V

    .line 43
    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;)V

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 9

    .line 138
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV3:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV4:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV5:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV6:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawArc(FFFFFF)V

    .line 139
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 10

    .line 143
    const-string/jumbo v6, "startAngle"

    const-string/jumbo v7, "sweepAngle"

    const-string v2, "left"

    const-string/jumbo v3, "top"

    const-string/jumbo v4, "right"

    const-string v5, "bottom"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 144
    const-string v0, "DrawArc"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 145
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V
    .registers 8

    .line 92
    invoke-static/range {p1 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 93
    return-void
.end method
