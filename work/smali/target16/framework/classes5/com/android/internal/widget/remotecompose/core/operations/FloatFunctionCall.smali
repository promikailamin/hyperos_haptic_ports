.class public Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "FloatFunctionCall.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "FunctionCall"

.field private static final blacklist MAX_FLOAT_ARRAY_SIZE:I = 0x50

.field private static final blacklist OP_CODE:I = 0xa6


# instance fields
.field private final blacklist mArgs:[F

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field blacklist mFunction:Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;

.field private final blacklist mId:I

.field private final blacklist mOutArgs:[F


# direct methods
.method public constructor blacklist <init>(I[F)V
    .registers 5

    .line 59
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 51
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 60
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mId:I

    .line 61
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    .line 62
    if-eqz p2, :cond_1d

    .line 63
    array-length p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    .line 64
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_20

    .line 66
    :cond_1d
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    .line 68
    :goto_20
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V
    .registers 4

    .line 123
    const/16 v0, 0xa6

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 125
    const/4 p1, 0x0

    if-eqz p2, :cond_1b

    .line 126
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 127
    nop

    :goto_10
    array-length v0, p2

    if-ge p1, v0, :cond_1e

    .line 128
    aget v0, p2, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 127
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    .line 131
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 133
    :cond_1e
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5

    .line 165
    const/16 v0, 0xa6

    const-string v1, "FunctionCall"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 166
    const-string v0, "Command to call the function"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 167
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of function to call"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 168
    const-string v1, "argLen"

    const-string/jumbo v2, "the number of Arguments"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 169
    const/16 v0, 0xa

    const-string/jumbo v2, "values"

    const-string v3, "array of float arguments"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 170
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 144
    const/16 v2, 0x50

    if-gt v1, v2, :cond_27

    .line 147
    nop

    .line 148
    if-lez v1, :cond_1d

    .line 149
    new-array v2, v1, [F

    .line 150
    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_1e

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    aput v4, v2, v3

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 148
    :cond_1d
    const/4 v2, 0x0

    .line 155
    :cond_1e
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;-><init>(I[F)V

    .line 156
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-void

    .line 145
    :cond_27
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "array too big "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 6

    .line 180
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mFunction:Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->getArgs()[I

    move-result-object v0

    .line 182
    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 183
    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 186
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mFunction:Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->execute(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 187
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 87
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mFunction:Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;

    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    if-eqz v0, :cond_34

    .line 89
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 90
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    aget v1, v1, v0

    .line 91
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 92
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v2

    if-nez v2, :cond_31

    .line 93
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v2

    if-nez v2, :cond_31

    .line 94
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 89
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 98
    :cond_34
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 191
    nop

    .line 192
    const-string v0, "FunctionCall"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mId:I

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    .line 194
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "args"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    .line 195
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "outArgs"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 196
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callFunction["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    const/4 v1, 0x0

    :goto_20
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    array-length v2, v2

    if-ge v1, v2, :cond_50

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_33

    const-string v2, ""

    goto :goto_35

    :cond_33
    const-string v2, " ,"

    :goto_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    aget v3, v3, v1

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 112
    :cond_50
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    if-eqz v0, :cond_31

    .line 73
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    array-length v1, v1

    if-ge v0, v1, :cond_31

    .line 74
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    aget v1, v1, v0

    .line 75
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    .line 76
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 77
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 78
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 79
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v1

    goto :goto_2c

    .line 80
    :cond_2b
    nop

    :goto_2c
    aput v1, v2, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 83
    :cond_31
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4

    .line 102
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 103
    return-void
.end method
