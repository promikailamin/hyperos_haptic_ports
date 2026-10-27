.class public Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ParticlesCreate.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ParticlesCreate"

.field private static final blacklist MAX_EQU_LENGTH:I = 0x20

.field private static final blacklist MAX_FLOAT_ARRAY:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0xa1


# instance fields
.field private final blacklist mEquations:[[F

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private final blacklist mId:I

.field private final blacklist mIndexeVars:[I

.field private final blacklist mOutEquations:[[F

.field private final blacklist mParticleCount:I

.field private final blacklist mParticles:[[F

.field private final blacklist mVarId:[I


# direct methods
.method public constructor blacklist <init>(I[I[[FI)V
    .registers 9

    .line 59
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 56
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 60
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    .line 61
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    .line 62
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    .line 63
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticleCount:I

    .line 64
    array-length p1, p3

    new-array p1, p1, [[F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    .line 65
    const/4 p1, 0x0

    move v0, p1

    :goto_19
    array-length v1, p3

    if-ge v0, v1, :cond_34

    .line 66
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v2, p3, v0

    array-length v2, v2

    new-array v2, v2, [F

    aput-object v2, v1, v0

    .line 67
    aget-object v1, p3, v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v2, v2, v0

    aget-object v3, p3, v0

    array-length v3, v3

    invoke-static {v1, p1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 69
    :cond_34
    array-length p2, p2

    const/4 p3, 0x2

    new-array p3, p3, [I

    const/4 v0, 0x1

    aput p2, p3, v0

    aput p4, p3, p1

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[F

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    .line 71
    const/16 p2, 0x14

    new-array p2, p2, [I

    .line 72
    nop

    .line 73
    sget p3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->VAR1:F

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    .line 74
    move p4, p1

    move v0, p4

    :goto_54
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v1, v1

    if-ge p4, v1, :cond_89

    .line 75
    move v1, p1

    :goto_5a
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v2, v2, p4

    array-length v2, v2

    if-ge v1, v2, :cond_86

    .line 76
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v2, v2, p4

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v2, v2, p4

    aget v2, v2, v1

    .line 77
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    if-ne v2, p3, :cond_83

    .line 78
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v3, v3

    mul-int/2addr v3, p4

    add-int/2addr v3, v1

    aput v3, p2, v0

    move v0, v2

    .line 75
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 74
    :cond_86
    add-int/lit8 p4, p4, 0x1

    goto :goto_54

    .line 82
    :cond_89
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mIndexeVars:[I

    .line 83
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V
    .registers 7

    .line 155
    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 157
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 158
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 159
    const/4 p1, 0x0

    move p4, p1

    :goto_11
    array-length v0, p2

    if-ge p4, v0, :cond_32

    .line 160
    aget v0, p2, p4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 161
    aget-object v0, p3, p4

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 162
    move v0, p1

    :goto_20
    aget-object v1, p3, p4

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 163
    aget-object v1, p3, p4

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 159
    :cond_2f
    add-int/lit8 p4, p4, 0x1

    goto :goto_11

    .line 166
    :cond_32
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6

    .line 205
    const/16 v0, 0xa1

    const-string v1, "ParticlesCreate"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 206
    const-string v0, "Creates a particle system"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 207
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "The reference of the particle system"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 208
    const-string/jumbo v2, "particleCount"

    const-string v3, "number of particles to create"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 209
    const-string/jumbo v2, "varLen"

    const-string v3, "number of variables asociate with the particles"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 210
    const/16 v3, 0xa

    const-string v4, "id followed by equations"

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 211
    const-string v1, "equLen"

    const-string v2, "length of the equation"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 212
    const-string v0, "equation"

    const-string/jumbo v1, "varLen * equLen"

    const-string v2, "float array equations"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 213
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

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 178
    const-string v3, " map entries more than max = "

    const/16 v4, 0x7d0

    if-gt v2, v4, :cond_64

    .line 181
    new-array v5, v2, [I

    .line 182
    new-array v6, v2, [[F

    .line 183
    const/4 v7, 0x0

    move v8, v7

    :goto_18
    if-ge v8, v2, :cond_5b

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    aput v9, v5, v8

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    .line 186
    const/16 v10, 0x20

    if-gt v9, v10, :cond_40

    .line 190
    new-array v9, v9, [F

    aput-object v9, v6, v8

    .line 191
    move v9, v7

    :goto_2d
    aget-object v10, v6, v8

    array-length v10, v10

    if-ge v9, v10, :cond_3d

    .line 192
    aget-object v10, v6, v8

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    aput v11, v10, v9

    .line 191
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 183
    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    .line 187
    :cond_40
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_5b
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-direct {p0, v0, v5, v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;-><init>(I[I[[FI)V

    .line 196
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void

    .line 179
    :cond_64
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getEquations()[[F
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    return-object v0
.end method

.method public blacklist getParticles()[[F
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    return-object v0
.end method

.method public blacklist getVariableIds()[I
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    return-object v0
.end method

.method blacklist initializeParticle(I)V
    .registers 9

    .line 229
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    aget-object v2, v2, p1

    array-length v2, v2

    if-ge v1, v2, :cond_40

    .line 230
    move v2, v0

    :goto_a
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mIndexeVars:[I

    array-length v3, v3

    if-ge v2, v3, :cond_26

    .line 231
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mIndexeVars:[I

    aget v3, v3, v2

    .line 232
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    array-length v4, v4

    div-int v4, v3, v4

    .line 233
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    array-length v5, v5

    rem-int/2addr v3, v5

    .line 234
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v4, v5, v4

    int-to-float v5, p1

    aput v5, v4, v3

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 236
    :cond_26
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v5, v5, v1

    array-length v5, v5

    new-array v6, v0, [F

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v3

    aput v3, v2, v1

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 238
    :cond_40
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 3

    .line 223
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->initializeParticle(I)V

    .line 223
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 226
    :cond_c
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 9

    .line 103
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 104
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_35

    .line 105
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v2, v2, v1

    .line 106
    array-length v3, v2

    move v4, v0

    :goto_12
    if-ge v4, v3, :cond_32

    aget v5, v2, v4

    .line 107
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 108
    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 109
    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 110
    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 106
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 104
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 114
    :cond_35
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 2

    .line 253
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParticlesCreate["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    const/4 v2, 0x0

    move v3, v2

    :goto_21
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    array-length v4, v4

    if-ge v3, v4, :cond_98

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v5, v5, v3

    .line 128
    array-length v6, v5

    new-array v6, v6, [Ljava/lang/String;

    .line 129
    move v7, v2

    :goto_4d
    array-length v8, v5

    if-ge v7, v8, :cond_7a

    .line 130
    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v5, v7

    invoke-static {v9}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 129
    :cond_77
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 134
    :cond_7a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 137
    :cond_98
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8

    .line 87
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_3d

    .line 89
    move v2, v0

    :goto_8
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_3a

    .line 90
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v3, v3, v1

    aget v3, v3, v2

    .line 91
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v4, v4, v1

    .line 92
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 93
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_34

    .line 94
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_34

    .line 95
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v3

    goto :goto_35

    .line 96
    :cond_34
    nop

    :goto_35
    aput v3, v4, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 87
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 99
    :cond_3d
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 118
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticleCount:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V

    .line 119
    return-void
.end method
