.class public Lcom/android/internal/widget/remotecompose/core/operations/PaintData;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "PaintData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/ComponentData;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "PaintData"

.field public static final blacklist MAX_STRING_SIZE:I = 0xfa0

.field private static final blacklist OP_CODE:I = 0x28


# instance fields
.field public blacklist mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 42
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 45
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .registers 3

    .line 94
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 95
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->writeBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 96
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5

    .line 116
    const/16 v0, 0x28

    const-string v1, "PaintData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 117
    const-string v0, "Encode a Paint "

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 118
    const/4 v0, 0x0

    const-string v1, "length"

    const-string v2, "id string"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 119
    const/16 v0, 0xb

    const-string/jumbo v2, "paint"

    const-string/jumbo v3, "path encoded as floats"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 120
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 84
    const/16 v0, 0x28

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 75
    const-string v0, "PaintData"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;-><init>()V

    .line 106
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->readBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 107
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 131
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerVars(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 55
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 135
    const-string v0, "PaintData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "paintBundle"

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 136
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaintData \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 50
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 60
    return-void
.end method
