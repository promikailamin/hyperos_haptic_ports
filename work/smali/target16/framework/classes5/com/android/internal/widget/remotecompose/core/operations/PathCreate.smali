.class public Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "PathCreate.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "PathCreate"

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

.field public static final blacklist MOVE:I = 0xa

.field public static final blacklist MOVE_NAN:F

.field private static final blacklist OP_CODE:I = 0x9f

.field public static final blacklist QUADRATIC:I = 0xc

.field public static final blacklist QUADRATIC_NAN:F


# instance fields
.field blacklist mFloatPath:[F

.field blacklist mInstanceId:I

.field blacklist mOutputPath:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->MOVE_NAN:F

    .line 115
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->LINE_NAN:F

    .line 116
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->QUADRATIC_NAN:F

    .line 117
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->CONIC_NAN:F

    .line 118
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->CUBIC_NAN:F

    .line 119
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->CLOSE_NAN:F

    .line 120
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->DONE_NAN:F

    return-void
.end method

.method constructor blacklist <init>(IFF)V
    .registers 6

    .line 50
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mInstanceId:I

    .line 52
    const/4 p1, 0x3

    new-array p1, p1, [F

    sget v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->MOVE_NAN:F

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    aput p2, p1, v0

    const/4 p2, 0x2

    aput p3, p1, p2

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    .line 53
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    .line 54
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V
    .registers 5

    .line 150
    const/16 v0, 0x9f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 153
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 154
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 176
    const/16 v0, 0x9f

    const-string v1, "PathCreate"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 177
    const-string v0, "Encode a Path "

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 178
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of path"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 179
    const/4 v0, 0x1

    const-string/jumbo v1, "startX"

    const-string v2, "initial start x"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 180
    const-string v2, "initial start y"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 181
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 138
    const/16 v0, 0x9f

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 129
    const-string v0, "PathCreate"

    return-object v0
.end method

.method public static blacklist pathString([F)Ljava/lang/String;
    .registers 6

    .line 191
    if-nez p0, :cond_5

    .line 192
    const-string p0, "null"

    return-object p0

    .line 194
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_97

    .line 196
    if-eqz v1, :cond_15

    .line 197
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_15
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 200
    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    .line 201
    const/16 v3, 0x10

    if-gt v2, v3, :cond_71

    .line 202
    packed-switch v2, :pswitch_data_9c

    .line 225
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

    .line 226
    goto :goto_8d

    .line 222
    :pswitch_47
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    goto :goto_8d

    .line 219
    :pswitch_4d
    const-string v2, "Z"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    goto :goto_8d

    .line 216
    :pswitch_53
    const-string v2, "C"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    goto :goto_8d

    .line 213
    :pswitch_59
    const-string v2, "R"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    goto :goto_8d

    .line 210
    :pswitch_5f
    const-string v2, "Q"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    goto :goto_8d

    .line 207
    :pswitch_65
    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    goto :goto_8d

    .line 204
    :pswitch_6b
    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    goto :goto_8d

    .line 229
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

    .line 231
    :goto_8d
    goto :goto_93

    .line 232
    :cond_8e
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 195
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 235
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p0

    .line 167
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;-><init>(IFF)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 245
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mInstanceId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadPathData(II[F)V

    .line 246
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 86
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->pathString([F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 2

    .line 240
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 241
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7

    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_18

    aget v3, v0, v2

    .line 72
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 73
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 71
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 76
    :cond_18
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 250
    const-string v0, "PathCreate"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "path"

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addPath(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 251
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathCreate["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string v1, " "

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->deepToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 98
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 102
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6

    .line 59
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 60
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    aget v1, v1, v0

    .line 61
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 62
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v1

    :cond_20
    aput v1, v2, v0

    goto :goto_27

    .line 64
    :cond_23
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    aput v1, v2, v0

    .line 59
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_2a
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 80
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mInstanceId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V

    .line 81
    return-void
.end method
