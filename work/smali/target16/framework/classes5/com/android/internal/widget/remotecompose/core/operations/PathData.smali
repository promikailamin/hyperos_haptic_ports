.class public Lcom/android/internal/widget/remotecompose/core/operations/PathData;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "PathData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "PathData"

.field public static final blacklist CLOSE:I = 0xf

.field public static final blacklist CLOSE_NAN:F

.field public static final blacklist CONIC:I = 0xd

.field public static final blacklist CONIC_NAN:F

.field public static final blacklist CUBIC:I = 0xe

.field public static final blacklist CUBIC_NAN:F

.field public static final blacklist DONE:I = 0x10

.field public static final blacklist DONE_NAN:F

.field public static final blacklist LINE:I = 0xb

.field public static final blacklist LINE_NAN:F

.field private static final blacklist MAX_PATH_LENGTH:I = 0x4e20

.field public static final blacklist MOVE:I = 0xa

.field public static final blacklist MOVE_NAN:F

.field private static final blacklist OP_CODE:I = 0x7b

.field public static final blacklist QUADRATIC:I = 0xc

.field public static final blacklist QUADRATIC_NAN:F


# instance fields
.field blacklist mFloatPath:[F

.field blacklist mInstanceId:I

.field blacklist mOutputPath:[F

.field private blacklist mPathChanged:Z

.field blacklist mWinding:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->MOVE_NAN:F

    .line 113
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->LINE_NAN:F

    .line 114
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->QUADRATIC_NAN:F

    .line 115
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CONIC_NAN:F

    .line 116
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CUBIC_NAN:F

    .line 117
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CLOSE_NAN:F

    .line 118
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->DONE_NAN:F

    return-void
.end method

.method constructor blacklist <init>(I[FI)V
    .registers 5

    .line 47
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mPathChanged:Z

    .line 48
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mInstanceId:I

    .line 49
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    .line 50
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    .line 51
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mWinding:I

    .line 52
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V
    .registers 5

    .line 147
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 149
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 150
    array-length p1, p2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p1, :cond_18

    aget v1, p2, v0

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 153
    :cond_18
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5

    .line 182
    const/16 v0, 0x7b

    const-string v1, "PathData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 183
    const-string v0, "Encode a Path "

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 184
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id string"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 185
    const-string v1, "length"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 186
    const/16 v0, 0xa

    const-string/jumbo v2, "pathData"

    const-string/jumbo v3, "path encoded as floats"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 187
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 136
    const/16 v0, 0x7b

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 127
    const-string v0, "PathData"

    return-object v0
.end method

.method public static blacklist pathString([F)Ljava/lang/String;
    .registers 6

    .line 197
    if-nez p0, :cond_5

    .line 198
    const-string p0, "null"

    return-object p0

    .line 200
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_97

    .line 202
    if-eqz v1, :cond_15

    .line 203
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_15
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 206
    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    .line 207
    const/16 v3, 0x10

    if-gt v2, v3, :cond_71

    .line 208
    packed-switch v2, :pswitch_data_9c

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    goto :goto_8d

    .line 228
    :pswitch_47
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    goto :goto_8d

    .line 225
    :pswitch_4d
    const-string v2, "Z"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    goto :goto_8d

    .line 222
    :pswitch_53
    const-string v2, "C"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    goto :goto_8d

    .line 219
    :pswitch_59
    const-string v2, "R"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    goto :goto_8d

    .line 216
    :pswitch_5f
    const-string v2, "Q"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    goto :goto_8d

    .line 213
    :pswitch_65
    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    goto :goto_8d

    .line 210
    :pswitch_6b
    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    goto :goto_8d

    .line 235
    :cond_71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :goto_8d
    goto :goto_93

    .line 238
    :cond_8e
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 201
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 241
    :cond_97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_9c
    .packed-switch 0xa
        :pswitch_6b
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
    .end packed-switch
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

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 163
    shr-int/lit8 v1, v0, 0x18

    .line 164
    const v2, 0xffffff

    and-int/2addr v0, v2

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 166
    const/16 v3, 0x4e20

    if-gt v2, v3, :cond_29

    .line 169
    new-array v3, v2, [F

    .line 170
    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_20

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    aput v5, v3, v4

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 173
    :cond_20
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;-><init>(I[FI)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void

    .line 167
    :cond_29
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Path too long"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mPathChanged:Z

    if-eqz v0, :cond_d

    .line 247
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mInstanceId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mWinding:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadPathData(II[F)V

    .line 249
    :cond_d
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mPathChanged:Z

    .line 250
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 87
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->pathString([F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_18

    aget v3, v0, v2

    .line 73
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 74
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 72
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 77
    :cond_18
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 254
    const-string v0, "PathData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "path"

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addPath(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 255
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathData["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->deepToString(Ljava/lang/String;)Ljava/lang/String;

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
    .registers 7

    .line 56
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    array-length v1, v1

    if-ge v0, v1, :cond_39

    .line 57
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    aget v1, v1, v0

    .line 58
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 59
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    aget v2, v2, v0

    .line 60
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v1

    :cond_24
    aput v1, v3, v0

    .line 61
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    aget v1, v1, v0

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_31

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mPathChanged:Z

    .line 64
    :cond_31
    goto :goto_36

    .line 65
    :cond_32
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    aput v1, v2, v0

    .line 56
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_39
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4

    .line 81
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mInstanceId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 82
    return-void
.end method
