.class public Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "MatrixConstant.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;
.implements Lcom/android/internal/widget/remotecompose/core/MatrixAccess;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "MatrixConstant"

.field private static final blacklist OP_CODE:I = 0xba


# instance fields
.field private final blacklist mMatrixId:I

.field private final blacklist mType:I

.field private blacklist mValues:[F


# direct methods
.method public constructor blacklist <init>(II[F)V
    .registers 4

    .line 43
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mMatrixId:I

    .line 45
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mType:I

    .line 46
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mValues:[F

    .line 47
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[F)V
    .registers 5

    .line 98
    const/16 v0, 0xba

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 101
    array-length p1, p3

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 102
    const/4 p1, 0x0

    :goto_10
    array-length p2, p3

    if-ge p1, p2, :cond_1b

    .line 103
    aget p2, p3, p1

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 102
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    .line 105
    :cond_1b
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 133
    const/16 v0, 0xba

    const-string v1, "MatrixConstant"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 134
    const-string v0, "A float and its associated id"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 135
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of float"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 136
    const/4 v0, 0x1

    const-string/jumbo v1, "value"

    const-string v2, "32-bit float value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 137
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 85
    const/16 v0, 0xba

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 76
    const-string v0, "MatrixConstant"

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

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 117
    const/16 v3, 0x10

    if-gt v2, v3, :cond_29

    if-ltz v2, :cond_29

    .line 120
    new-array v3, v2, [F

    .line 121
    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_20

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    aput v5, v3, v4

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 124
    :cond_20
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;-><init>(II[F)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void

    .line 118
    :cond_29
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid matrix length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " corrupt buffer"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 141
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mMatrixId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 142
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get()[F
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mValues:[F

    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 152
    nop

    .line 153
    const-string v0, "MatrixConstant"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mMatrixId:I

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "matrix"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mType:I

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mValues:[F

    .line 156
    const-string/jumbo v1, "value"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addFloatExpressionSrc(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 157
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatConstant["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mMatrixId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update(Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;)V
    .registers 2

    .line 55
    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mValues:[F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mValues:[F

    .line 56
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mMatrixId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mType:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->mValues:[F

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[F)V

    .line 61
    return-void
.end method
