.class public Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "MatrixVectorMath.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "MatrixVectorMath"

.field private static final blacklist OP_CODE:I = 0xbc


# instance fields
.field private final blacklist mInputs:[F

.field blacklist mMatrix:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

.field public blacklist mMatrixId:I

.field private final blacklist mOutInputs:[F

.field private final blacklist mOutputs:[I

.field private final blacklist mTempOut:[F

.field private final blacklist mType:S


# direct methods
.method public constructor blacklist <init>(S[II[F)V
    .registers 6

    .line 51
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 47
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mMatrix:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    .line 52
    iput-short p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mType:S

    .line 53
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mMatrixId:I

    .line 54
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutputs:[I

    .line 55
    array-length p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutInputs:[F

    .line 56
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mInputs:[F

    .line 57
    array-length p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mTempOut:[F

    .line 58
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;S[II[F)V
    .registers 6

    .line 135
    const/16 v0, 0xbc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 137
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 138
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 139
    const/4 p1, 0x0

    move p3, p1

    :goto_11
    array-length v0, p2

    if-ge p3, v0, :cond_1c

    .line 140
    aget v0, p2, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 139
    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    .line 143
    :cond_1c
    array-length p2, p4

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 144
    nop

    :goto_21
    array-length p2, p4

    if-ge p1, p2, :cond_2c

    .line 145
    aget p2, p4, p1

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 144
    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    .line 147
    :cond_2c
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 7

    .line 185
    const/16 v0, 0xbc

    const-string v1, "MatrixVectorMath"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 186
    const-string v0, "A float and its associated id"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 187
    const/4 v0, 0x0

    const-string v1, "matrixId"

    const-string v2, "id of Matrix"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 188
    const/16 v1, 0x9

    const-string/jumbo v2, "opType"

    const-string v3, "The type of op 0=multiply"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 189
    const-string/jumbo v1, "outLength"

    const-string v2, "The length of the output vector"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 190
    const/4 v2, 0x1

    const-string/jumbo v3, "value"

    const-string v4, "32-bit float value"

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 191
    const-string v1, "inLength"

    const-string v5, "The length of the input vector"

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 192
    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 193
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 117
    const/16 v0, 0xbc

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 108
    const-string v0, "MatrixVectorMath"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v0

    int-to-short v0, v0

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 159
    const-string v3, " corrupt buffer"

    const-string v4, "Invalid Length "

    const/4 v5, 0x4

    if-gt v2, v5, :cond_60

    const/4 v6, 0x1

    if-lt v2, v6, :cond_60

    .line 162
    new-array v7, v2, [I

    .line 163
    const/4 v8, 0x0

    move v9, v8

    :goto_1b
    if-ge v9, v2, :cond_26

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    aput v10, v7, v9

    .line 163
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 167
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    .line 168
    if-gt v9, v5, :cond_45

    if-lt v9, v6, :cond_45

    .line 171
    new-array v2, v9, [F

    .line 172
    nop

    :goto_31
    if-ge v8, v9, :cond_3c

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    aput v3, v2, v8

    .line 172
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 176
    :cond_3c
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;

    invoke-direct {p0, v0, v7, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;-><init>(S[II[F)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void

    .line 169
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 197
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mMatrixId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/MatrixAccess;

    .line 198
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mMatrix:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/MatrixAccess;->get()[F

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->copyFrom([F)V

    .line 199
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mType:S

    if-nez v0, :cond_1f

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mMatrix:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutInputs:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mTempOut:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->multiply([F[F)V

    goto :goto_28

    .line 202
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mMatrix:Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutInputs:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mTempOut:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->evalPerspective([F[F)V

    .line 204
    :goto_28
    const/4 v0, 0x0

    :goto_29
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutputs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3c

    .line 205
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutputs:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mTempOut:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 207
    :cond_3c
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 77
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mMatrixId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 78
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mInputs:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 79
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mInputs:[F

    aget v1, v1, v0

    .line 80
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 81
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 78
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 84
    :cond_1f
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 217
    nop

    .line 218
    const-string v0, "MatrixVectorMath"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mMatrixId:I

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "matrix"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mInputs:[F

    .line 220
    const-string v1, "input"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addFloatExpressionSrc(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutputs:[I

    .line 221
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "output"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 222
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 94
    nop

    .line 95
    const-string v0, ""

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mInputs:[F

    array-length v2, v2

    const-string v3, " "

    if-ge v1, v2, :cond_2f

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mInputs:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutInputs:[F

    aget v3, v3, v1

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 98
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MatrixVectorMath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutputs:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mMatrixId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 63
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mInputs:[F

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 64
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mInputs:[F

    aget v1, v1, v0

    .line 65
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 67
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v1

    .line 68
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutInputs:[F

    aput v1, v2, v0

    .line 69
    goto :goto_25

    .line 70
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutInputs:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mInputs:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 63
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_28
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 88
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mType:S

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mOutputs:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mMatrixId:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->mInputs:[F

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;S[II[F)V

    .line 89
    return-void
.end method
