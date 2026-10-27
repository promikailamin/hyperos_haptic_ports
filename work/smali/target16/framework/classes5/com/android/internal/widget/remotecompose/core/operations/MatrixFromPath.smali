.class public Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "MatrixFromPath.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "MatrixFromPath"

.field private static final blacklist OP_CODE:I = 0xb5

.field public static final blacklist POSITION_MATRIX_FLAG:I = 0x1

.field public static final blacklist TANGENT_MATRIX_FLAG:I = 0x2


# instance fields
.field blacklist mFlags:I

.field blacklist mFraction:F

.field blacklist mOutFraction:F

.field blacklist mOutVOffset:F

.field blacklist mPathId:I

.field blacklist mVOffset:F


# direct methods
.method public constructor blacklist <init>(IFFI)V
    .registers 5

    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mPathId:I

    .line 50
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFraction:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mOutFraction:F

    .line 51
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mVOffset:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mOutVOffset:F

    .line 52
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFlags:I

    .line 53
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFI)V
    .registers 6

    .line 137
    const/16 v0, 0xb5

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 139
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 140
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 141
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 142
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 150
    const/16 v0, 0xb5

    const-string v1, "MatrixFromPath"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 151
    const-string v0, "Draw text along path object"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 152
    const/4 v0, 0x0

    const-string/jumbo v1, "textId"

    const-string v2, "id of the text"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 153
    const-string/jumbo v1, "pathId"

    const-string v2, "id of the path"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 154
    const/4 v0, 0x1

    const-string/jumbo v1, "xOffset"

    const-string/jumbo v2, "x Shift of the text"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 155
    const-string/jumbo v1, "yOffset"

    const-string/jumbo v2, "y Shift of the text"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 156
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 123
    const/16 v0, 0x35

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 114
    const-string v0, "DrawTextOnPath"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    .line 103
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;-><init>(IFFI)V

    .line 104
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 6

    .line 161
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mPathId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mOutFraction:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mOutVOffset:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFlags:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixFromPath(IFFI)V

    .line 162
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 65
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFraction:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 66
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFraction:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 68
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mVOffset:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 69
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mVOffset:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 71
    :cond_22
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 166
    nop

    .line 167
    const-string v0, "MatrixFromPath"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mPathId:I

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "pathId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mVOffset:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mOutVOffset:F

    .line 169
    const-string/jumbo v2, "vOffset"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFraction:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mOutFraction:F

    .line 170
    const-string v2, "hOffset"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 171
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawTextOnPath ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mPathId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFraction:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mOutFraction:F

    .line 84
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mVOffset:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mOutVOffset:F

    .line 86
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 57
    nop

    .line 58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFraction:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFraction:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_16

    :cond_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFraction:F

    :goto_16
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mOutFraction:F

    .line 59
    nop

    .line 60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mVOffset:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mVOffset:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    goto :goto_2e

    :cond_2c
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mVOffset:F

    :goto_2e
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mOutVOffset:F

    .line 61
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mPathId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFraction:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mVOffset:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->mFlags:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFI)V

    .line 76
    return-void
.end method
