.class public Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "PathExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "PathExpression"

.field public static final blacklist CLOSE:I = 0xf

.field public static final blacklist CLOSE_NAN:F

.field public static final blacklist CONIC:I = 0xd

.field public static final blacklist CONIC_NAN:F

.field public static final blacklist CUBIC:I = 0xe

.field public static final blacklist CUBIC_NAN:F

.field public static final blacklist DONE:I = 0x10

.field public static final blacklist DONE_NAN:F

.field public static final blacklist LINE:I = 0xb

.field public static final blacklist LINEAR:I = 0x4

.field public static final blacklist LINE_NAN:F

.field public static final blacklist LOOP:I = 0x1

.field private static final blacklist MASK:I = -0x800000

.field private static final blacklist MAX_EXPRESSION_LENGTH:I = 0x20

.field public static final blacklist MONOTONIC:I = 0x2

.field public static final blacklist MOVE:I = 0xa

.field public static final blacklist MOVE_NAN:F

.field private static final blacklist OP_CODE:I = 0xc1

.field public static final blacklist POLAR:I = 0x8

.field public static final blacklist QUADRATIC:I = 0xc

.field public static final blacklist QUADRATIC_NAN:F

.field public static final blacklist WINDING_MASK:I = 0x3000000


# instance fields
.field private blacklist mCount:F

.field private final blacklist mExpressionX:[F

.field private final blacklist mExpressionY:[F

.field private final blacklist mFlags:I

.field private final blacklist mInstanceId:I

.field private final blacklist mMax:F

.field private final blacklist mMin:F

.field private final blacklist mOutCount:F

.field private final blacklist mOutExpressionX:[F

.field private final blacklist mOutExpressionY:[F

.field private blacklist mOutMax:F

.field private blacklist mOutMin:F

.field private blacklist mOutputPath:[F

.field private blacklist mPathChanged:Z

.field private final blacklist mPathGenerator:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;

.field private final blacklist mWinding:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 215
    const v0, -0x7ffff6

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->MOVE_NAN:F

    .line 216
    const v0, -0x7ffff5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->LINE_NAN:F

    .line 217
    const v0, -0x7ffff4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->QUADRATIC_NAN:F

    .line 218
    const v0, -0x7ffff3

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->CONIC_NAN:F

    .line 219
    const v0, -0x7ffff2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->CUBIC_NAN:F

    .line 220
    const v0, -0x7ffff1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->CLOSE_NAN:F

    .line 221
    const v0, -0x7ffff0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->DONE_NAN:F

    return-void
.end method

.method constructor blacklist <init>(I[F[FFFFI)V
    .registers 9

    .line 75
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 45
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mPathGenerator:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutputPath:[F

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mPathChanged:Z

    .line 76
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mInstanceId:I

    .line 77
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    .line 78
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    .line 79
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    array-length p1, p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutExpressionX:[F

    .line 80
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    array-length p1, p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutExpressionY:[F

    .line 81
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMin:F

    .line 82
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMin:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutMin:F

    .line 83
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMax:F

    .line 84
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMax:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutMax:F

    .line 85
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mCount:F

    .line 86
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mCount:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutCount:F

    .line 87
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mFlags:I

    .line 88
    const/high16 p1, 0x3000000

    and-int/2addr p1, p7

    shr-int/lit8 p1, p1, 0x18

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mWinding:I

    .line 89
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[FFFFI)V
    .registers 9

    .line 263
    const/16 v0, 0xc1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 265
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 266
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 267
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 268
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 269
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 270
    array-length p1, p2

    const/4 p4, 0x0

    move p5, p4

    :goto_1b
    if-ge p5, p1, :cond_25

    aget p6, p2, p5

    .line 271
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 270
    add-int/lit8 p5, p5, 0x1

    goto :goto_1b

    .line 273
    :cond_25
    if-nez p3, :cond_2b

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    goto :goto_3a

    .line 275
    :cond_2b
    array-length p1, p3

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 276
    array-length p1, p3

    :goto_30
    if-ge p4, p1, :cond_3a

    aget p2, p3, p4

    .line 277
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 276
    add-int/lit8 p4, p4, 0x1

    goto :goto_30

    .line 280
    :cond_3a
    :goto_3a
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5

    .line 321
    const/16 v0, 0xc1

    const-string v1, "PathExpression"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 322
    const-string v0, "Encode a Path "

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 323
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id string"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 324
    const-string v1, "length"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 325
    const/16 v0, 0xa

    const-string/jumbo v2, "pathData"

    const-string/jumbo v3, "path encoded as floats"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 326
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 239
    const/16 v0, 0xc1

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 230
    const-string v0, "PathExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v7

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 295
    const-string v2, "Path too long"

    const/16 v3, 0x20

    if-gt v0, v3, :cond_51

    .line 298
    move-object v8, v2

    new-array v2, v0, [F

    .line 299
    const/4 v9, 0x0

    move v10, v9

    :goto_23
    if-ge v10, v0, :cond_2e

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    aput v11, v2, v10

    .line 299
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    .line 303
    :cond_2e
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 304
    if-gt v0, v3, :cond_4b

    .line 307
    new-array v3, v0, [F

    .line 308
    nop

    :goto_37
    if-ge v9, v0, :cond_42

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    aput v8, v3, v9

    .line 308
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    .line 311
    :cond_42
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;-><init>(I[F[FFFFI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    return-void

    .line 305
    :cond_4b
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 296
    :cond_51
    move-object v8, v2

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 15

    .line 331
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mPathChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6c

    .line 332
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mFlags:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_d

    move v11, v2

    goto :goto_e

    :cond_d
    move v11, v1

    .line 333
    :goto_e
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mPathGenerator:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutCount:F

    float-to-int v2, v2

    invoke-virtual {v0, v2, v11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->getReturnLength(IZ)I

    move-result v0

    .line 334
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutputPath:[F

    array-length v2, v2

    if-eq v2, v0, :cond_20

    .line 335
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutputPath:[F

    .line 337
    :cond_20
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mFlags:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_49

    .line 338
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mPathGenerator:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutputPath:[F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutExpressionX:[F

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutExpressionY:[F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutMin:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutMax:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutCount:F

    float-to-int v9, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mFlags:I

    and-int/lit8 v10, v0, 0x6

    .line 347
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    .line 338
    invoke-virtual/range {v3 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->getPolarPath([F[F[FFFIIZLcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;)I

    goto :goto_63

    .line 349
    :cond_49
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mPathGenerator:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutputPath:[F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutExpressionX:[F

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutExpressionY:[F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutMin:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutMax:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutCount:F

    float-to-int v9, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mFlags:I

    and-int/lit8 v10, v0, 0x6

    .line 358
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v12

    .line 349
    invoke-virtual/range {v3 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->getPath([F[F[FFFIIZLcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;)I

    .line 360
    :goto_63
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mInstanceId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mWinding:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutputPath:[F

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadPathData(II[F)V

    .line 362
    :cond_6c
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mPathChanged:Z

    .line 363
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 171
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    array-length v3, v3

    const-string v4, "["

    const-string v5, "]"

    if-ge v2, v3, :cond_3c

    .line 172
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    aget v4, v4, v2

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 171
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 176
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    .line 177
    nop

    :goto_42
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    array-length v3, v3

    if-ge v1, v3, :cond_73

    .line 178
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    aget v6, v6, v1

    invoke-static {v6}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 177
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 182
    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "PathExpression[id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mInstanceId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", flags="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mFlags:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", min="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMin:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", max="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMax:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", count="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mCount:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", expressionX="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    .line 195
    invoke-static {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", expressionY="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    .line 197
    invoke-static {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    return-object p1
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8

    .line 136
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMax:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 137
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMax:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 139
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMin:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 140
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMin:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 142
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mCount:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 143
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mCount:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 146
    :cond_33
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_38
    if-ge v3, v1, :cond_58

    aget v4, v0, v3

    .line 147
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 148
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_55

    .line 149
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_55

    .line 150
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 146
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 153
    :cond_58
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    array-length v1, v0

    :goto_5b
    if-ge v2, v1, :cond_7b

    aget v3, v0, v2

    .line 154
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 155
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v4

    if-nez v4, :cond_78

    .line 156
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v4

    if-nez v4, :cond_78

    .line 157
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 153
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 160
    :cond_7b
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 367
    nop

    .line 368
    const-string v0, "PathExpression"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mInstanceId:I

    .line 369
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mFlags:I

    .line 370
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "flags"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mCount:F

    .line 371
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "count"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMin:F

    .line 372
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "min"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMax:F

    .line 373
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "max"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    .line 374
    const-string v1, "expressionX"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addPath(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    .line 375
    const-string v1, "expressionY"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addPath(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 376
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathData["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->deepToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6

    .line 93
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMax:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 94
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMax:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutMax:F

    .line 96
    :cond_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMin:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 97
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMin:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutMin:F

    .line 99
    :cond_28
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mCount:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 100
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mCount:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mCount:F

    .line 102
    :cond_3c
    const/4 v0, 0x0

    move v1, v0

    :goto_3e
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    array-length v2, v2

    if-ge v1, v2, :cond_77

    .line 103
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    aget v2, v2, v1

    .line 104
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 105
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 106
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 107
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isVar1(F)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 108
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v2

    .line 110
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutExpressionX:[F

    aput v2, v3, v1

    .line 112
    goto :goto_74

    .line 113
    :cond_6c
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutExpressionX:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 102
    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 117
    :cond_77
    nop

    :goto_78
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    array-length v1, v1

    if-ge v0, v1, :cond_b1

    .line 118
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    aget v1, v1, v0

    .line 119
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 120
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 121
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 122
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isVar1(F)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 123
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutExpressionY:[F

    aput v1, v2, v0

    .line 127
    goto :goto_ae

    .line 128
    :cond_a6
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mOutExpressionY:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 117
    :goto_ae
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 131
    :cond_b1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mPathChanged:Z

    .line 132
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 10

    .line 164
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mInstanceId:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionX:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mExpressionY:[F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMin:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mMax:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mCount:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->mFlags:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[FFFFI)V

    .line 165
    return-void
.end method
