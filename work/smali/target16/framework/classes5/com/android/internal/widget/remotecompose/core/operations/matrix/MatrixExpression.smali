.class public Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "MatrixExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/MatrixAccess;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "MatrixExpression"

.field private static final blacklist OP_CODE:I = 0xbb


# instance fields
.field private final blacklist mExpression:[F

.field private blacklist mMatrixId:I

.field blacklist mMatrixOperations:Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;

.field private blacklist mOutExpression:[F

.field private blacklist mType:I

.field private blacklist mValues:[F


# direct methods
.method public constructor blacklist <init>(II[F)V
    .registers 5

    .line 52
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mValues:[F

    .line 50
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mMatrixOperations:Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;

    .line 53
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mMatrixId:I

    .line 54
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mType:I

    .line 55
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mExpression:[F

    .line 56
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[F)V
    .registers 5

    .line 134
    const/16 v0, 0xbb

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 136
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 137
    array-length p1, p3

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 138
    const/4 p1, 0x0

    :goto_10
    array-length p2, p3

    if-ge p1, p2, :cond_1b

    .line 139
    aget p2, p3, p1

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 138
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    .line 141
    :cond_1b
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 170
    const/16 v0, 0xbb

    const-string v1, "MatrixExpression"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 171
    const-string v0, "A float and its associated id"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 172
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of float"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 173
    const/4 v0, 0x1

    const-string/jumbo v1, "value"

    const-string v2, "32-bit float value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 174
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 121
    const/16 v0, 0xbb

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 112
    const-string v0, "MatrixExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 153
    const/16 v3, 0x20

    if-gt v2, v3, :cond_29

    if-ltz v2, :cond_29

    .line 156
    new-array v3, v2, [F

    .line 157
    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_20

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    aput v5, v3, v4

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 161
    :cond_20
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;-><init>(II[F)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void

    .line 154
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Length "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " corrupt buffer"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mMatrixOperations:Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mOutExpression:[F

    const/4 v2, 0x0

    new-array v2, v2, [F

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->eval([F[F)Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mValues:[F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/Matrix;->putValues([F)V

    .line 180
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mMatrixId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 181
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mMatrixId:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 182
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get()[F
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mValues:[F

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 77
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mExpression:[F

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 78
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mExpression:[F

    aget v1, v1, v0

    .line 79
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->isOperator(F)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 80
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 77
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_20
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 192
    nop

    .line 193
    const-string v0, "MatrixExpression"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mMatrixId:I

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "matrix"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mType:I

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mValues:[F

    .line 196
    const-string/jumbo v1, "value"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addFloatExpressionSrc(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 197
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatConstant["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mMatrixId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update(Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;)V
    .registers 2

    .line 91
    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mValues:[F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mValues:[F

    .line 92
    return-void
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mOutExpression:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mOutExpression:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mExpression:[F

    array-length v1, v1

    if-eq v0, v1, :cond_13

    .line 61
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mExpression:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mOutExpression:[F

    .line 63
    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mExpression:[F

    array-length v1, v1

    if-ge v0, v1, :cond_41

    .line 64
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mExpression:[F

    aget v1, v1, v0

    .line 65
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/MatrixOperations;->isOperator(F)Z

    move-result v2

    if-nez v2, :cond_36

    .line 67
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v1

    .line 68
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mOutExpression:[F

    aput v1, v2, v0

    .line 69
    goto :goto_3e

    .line 70
    :cond_36
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mOutExpression:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mExpression:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 63
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 73
    :cond_41
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 96
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mMatrixId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mType:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->mValues:[F

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[F)V

    .line 97
    return-void
.end method
