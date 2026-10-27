.class public Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ParticlesLoop.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ParticlesLoop"

.field private static final blacklist MAX_EQU_LENGTH:I = 0x20

.field private static final blacklist MAX_FLOAT_ARRAY:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0xa3


# instance fields
.field private final blacklist mEquations:[[F

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private final blacklist mId:I

.field private final blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutEquations:[[F

.field private final blacklist mOutRestart:[F

.field private blacklist mParticles:[[F

.field blacklist mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

.field private final blacklist mRestart:[F

.field private blacklist mVarId:[I


# direct methods
.method public constructor blacklist <init>(I[F[[F)V
    .registers 7

    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 77
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    .line 78
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    .line 79
    const/4 p1, 0x0

    if-eqz p2, :cond_24

    .line 80
    array-length v0, p2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    array-length v1, p2

    invoke-static {p2, p1, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    .line 83
    :cond_24
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 86
    :goto_27
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    .line 87
    array-length p2, p3

    new-array p2, p2, [[F

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    .line 88
    move p2, p1

    :goto_2f
    array-length v0, p3

    if-ge p2, v0, :cond_4a

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v1, p3, p2

    array-length v1, v1

    new-array v1, v1, [F

    aput-object v1, v0, p2

    .line 90
    aget-object v0, p3, p2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v1, v1, p2

    aget-object v2, p3, p2

    array-length v2, v2

    invoke-static {v0, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    add-int/lit8 p2, p2, 0x1

    goto :goto_2f

    .line 92
    :cond_4a
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V
    .registers 6

    .line 173
    const/16 v0, 0xa3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 175
    const/4 p1, 0x0

    if-eqz p2, :cond_1b

    .line 176
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 177
    move v0, p1

    :goto_10
    array-length v1, p2

    if-ge v0, v1, :cond_1e

    .line 178
    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 181
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 183
    :cond_1e
    array-length p2, p3

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 184
    move p2, p1

    :goto_23
    array-length v0, p3

    if-ge p2, v0, :cond_3f

    .line 185
    aget-object v0, p3, p2

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 186
    move v0, p1

    :goto_2d
    aget-object v1, p3, p2

    array-length v1, v1

    if-ge v0, v1, :cond_3c

    .line 187
    aget-object v1, p3, p2

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 184
    :cond_3c
    add-int/lit8 p2, p2, 0x1

    goto :goto_23

    .line 190
    :cond_3f
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6

    .line 241
    const/16 v0, 0xa3

    const-string v1, "ParticlesLoop"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 242
    const-string v0, "This evolves the particles & recycles them"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 243
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of particle system"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 244
    const-string/jumbo v1, "recycleLen"

    const-string/jumbo v2, "the number of floats in restart equeation if 0 no restart"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 248
    const/16 v2, 0xa

    const-string/jumbo v3, "values"

    const-string v4, "array of floats"

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 249
    const-string/jumbo v1, "varLen"

    const-string/jumbo v4, "the number of equations to follow"

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 250
    const-string v1, "equLen"

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 251
    const-string v0, "floats for the equation"

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 252
    return-void
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

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 201
    nop

    .line 202
    const-string v2, " map entries more than max = "

    const/4 v3, 0x0

    const/16 v4, 0x20

    if-lez v1, :cond_3b

    .line 203
    if-gt v1, v4, :cond_20

    .line 207
    new-array v5, v1, [F

    .line 208
    move v6, v3

    :goto_15
    if-ge v6, v1, :cond_3c

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    aput v7, v5, v6

    .line 208
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 204
    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_3b
    const/4 v5, 0x0

    .line 213
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 214
    const/16 v6, 0x7d0

    if-gt v1, v6, :cond_8b

    .line 218
    new-array v7, v1, [[F

    .line 219
    move v8, v3

    :goto_47
    if-ge v8, v1, :cond_82

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    .line 222
    if-gt v9, v4, :cond_67

    .line 226
    new-array v9, v9, [F

    aput-object v9, v7, v8

    .line 227
    move v9, v3

    :goto_54
    aget-object v10, v7, v8

    array-length v10, v10

    if-ge v9, v10, :cond_64

    .line 228
    aget-object v10, v7, v8

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    aput v11, v10, v9

    .line 227
    add-int/lit8 v9, v9, 0x1

    goto :goto_54

    .line 219
    :cond_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 223
    :cond_67
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    :cond_82
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;

    invoke-direct {p0, v0, v5, v7}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;-><init>(I[F[[F)V

    .line 232
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void

    .line 215
    :cond_8b
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 11

    .line 262
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 263
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    array-length v3, v3

    if-ge v2, v3, :cond_cc

    .line 265
    move v3, v1

    :goto_c
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v4, v4, v2

    array-length v4, v4

    if-ge v3, v4, :cond_26

    .line 266
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v5, v5, v2

    aget v5, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 270
    :cond_26
    move v3, v1

    :goto_27
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v4, v4, v2

    array-length v4, v4

    if-ge v3, v4, :cond_55

    .line 271
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v6, v6, v3

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v7, v7, v3

    array-length v7, v7

    new-array v8, v1, [F

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v5

    aput v5, v4, v3

    .line 272
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v5, v5, v2

    aget v5, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 275
    :cond_55
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    if-eqz v3, :cond_9d

    .line 276
    move v3, v1

    :goto_5a
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v4, v4

    if-ge v3, v4, :cond_86

    .line 277
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    aget v4, v4, v3

    .line 278
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 279
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 280
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v6

    if-nez v6, :cond_80

    .line 281
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v6

    if-nez v6, :cond_80

    .line 282
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v4

    goto :goto_81

    .line 283
    :cond_80
    nop

    :goto_81
    aput v4, v5, v3

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 285
    :cond_86
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    array-length v5, v5

    new-array v6, v1, [F

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9d

    .line 286
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->initializeParticle(I)V

    .line 290
    :cond_9d
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 291
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v5, :cond_bd

    .line 292
    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 295
    :cond_bd
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 296
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 297
    goto :goto_a3

    .line 263
    :cond_c8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 299
    :cond_cc
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 300
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 9

    .line 123
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->getParticles()[[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->getVariableIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 127
    move v0, v1

    :goto_20
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v2, v2

    if-ge v0, v2, :cond_45

    .line 128
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    aget v2, v2, v0

    .line 129
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 130
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_42

    .line 131
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_42

    .line 132
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {p1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 127
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 136
    :cond_45
    move v0, v1

    :goto_46
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    array-length v2, v2

    if-ge v0, v2, :cond_74

    .line 137
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    aget-object v2, v2, v0

    .line 138
    array-length v3, v2

    move v4, v1

    :goto_51
    if-ge v4, v3, :cond_71

    aget v5, v2, v4

    .line 139
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 140
    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 141
    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 142
    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 138
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 136
    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 146
    :cond_74
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 304
    const-string v0, "ParticlesLoop"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 305
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParticlesLoop["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 9

    .line 96
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 97
    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v2, v2

    if-ge v0, v2, :cond_32

    .line 98
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    aget v2, v2, v0

    .line 99
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 100
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 101
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 102
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 103
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v2

    goto :goto_2d

    .line 104
    :cond_2c
    nop

    :goto_2d
    aput v2, v3, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 107
    :cond_32
    move v0, v1

    :goto_33
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    array-length v2, v2

    if-ge v0, v2, :cond_6a

    .line 108
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    aget-object v2, v2, v0

    .line 109
    move v3, v1

    :goto_3d
    array-length v4, v2

    if-ge v3, v4, :cond_67

    .line 110
    aget v4, v2, v3

    .line 111
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v5, v5, v0

    .line 112
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 113
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v6

    if-nez v6, :cond_61

    .line 114
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v6

    if-nez v6, :cond_61

    .line 115
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v4

    goto :goto_62

    .line 116
    :cond_61
    nop

    :goto_62
    aput v4, v5, v3

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 107
    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 119
    :cond_6a
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 150
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V

    .line 151
    return-void
.end method
