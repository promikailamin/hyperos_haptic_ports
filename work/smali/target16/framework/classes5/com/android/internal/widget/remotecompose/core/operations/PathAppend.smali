.class public Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "PathAppend.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "PathAppend"

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

.field private static final blacklist MAX_PATH_BUFFER:I = 0x7d0

.field public static final blacklist MOVE:I = 0xa

.field public static final blacklist MOVE_NAN:F

.field private static final blacklist OP_CODE:I = 0xa0

.field public static final blacklist QUADRATIC:I = 0xc

.field public static final blacklist QUADRATIC_NAN:F

.field public static final blacklist RESET:I = 0x11

.field public static final blacklist RESET_NAN:F


# instance fields
.field blacklist mFloatPath:[F

.field blacklist mInstanceId:I

.field blacklist mOutputPath:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->MOVE_NAN:F

    .line 114
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->LINE_NAN:F

    .line 115
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->QUADRATIC_NAN:F

    .line 116
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->CONIC_NAN:F

    .line 117
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->CUBIC_NAN:F

    .line 118
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->CLOSE_NAN:F

    .line 119
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->DONE_NAN:F

    .line 120
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->RESET_NAN:F

    return-void
.end method

.method constructor blacklist <init>(I[F)V
    .registers 3

    .line 52
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    .line 54
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    .line 55
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    .line 56
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V
    .registers 5

    .line 150
    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 152
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 153
    array-length p1, p2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p1, :cond_18

    aget v1, p2, v0

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 156
    :cond_18
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5

    .line 183
    const/16 v0, 0xa0

    const-string v1, "PathAppend"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 184
    const-string v0, "Append to a Path"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 185
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id string"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 186
    const-string v1, "length"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 187
    const/16 v0, 0xa

    const-string/jumbo v2, "pathData"

    const-string/jumbo v3, "path encoded as floats"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 188
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 138
    const/16 v0, 0xa0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 129
    const-string v0, "PathAppend"

    return-object v0
.end method

.method public static blacklist pathString([F)Ljava/lang/String;
    .registers 6

    .line 226
    if-nez p0, :cond_5

    .line 227
    const-string p0, "null"

    return-object p0

    .line 229
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_89

    .line 231
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 232
    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    .line 233
    const/16 v3, 0x10

    if-gt v2, v3, :cond_6a

    .line 234
    packed-switch v2, :pswitch_data_8e

    .line 257
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

    .line 258
    goto :goto_86

    .line 254
    :pswitch_40
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    goto :goto_86

    .line 251
    :pswitch_46
    const-string v2, "Z"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    goto :goto_86

    .line 248
    :pswitch_4c
    const-string v2, "C"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    goto :goto_86

    .line 245
    :pswitch_52
    const-string v2, "R"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    goto :goto_86

    .line 242
    :pswitch_58
    const-string v2, "Q"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    goto :goto_86

    .line 239
    :pswitch_5e
    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    goto :goto_86

    .line 236
    :pswitch_64
    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    goto :goto_86

    .line 261
    :cond_6a
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

    .line 230
    :cond_86
    :goto_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 265
    :cond_89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_8e
    .packed-switch 0xa
        :pswitch_64
        :pswitch_5e
        :pswitch_58
        :pswitch_52
        :pswitch_4c
        :pswitch_46
        :pswitch_40
    .end packed-switch
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

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 167
    const/16 v2, 0x7d0

    if-gt v1, v2, :cond_23

    .line 170
    new-array v2, v1, [F

    .line 171
    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1a

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    aput v4, v2, v3

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 174
    :cond_1a
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;-><init>(I[F)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void

    .line 168
    :cond_23
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "path too long"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8

    .line 197
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPathData(I)[F

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    .line 199
    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    sget v4, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->RESET_NAN:F

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_1f

    .line 200
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    new-array v1, v2, [F

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadPathData(II[F)V

    .line 201
    return-void

    .line 203
    :cond_1f
    if-eqz v0, :cond_44

    .line 204
    array-length v1, v0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    array-length v3, v3

    add-int/2addr v1, v3

    new-array v1, v1, [F

    .line 206
    move v3, v2

    :goto_29
    array-length v4, v0

    if-ge v3, v4, :cond_33

    .line 207
    aget v4, v0, v3

    aput v4, v1, v3

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 209
    :cond_33
    move v3, v2

    :goto_34
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    array-length v4, v4

    if-ge v3, v4, :cond_4b

    .line 210
    array-length v4, v0

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    aget v5, v5, v3

    aput v5, v1, v4

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 213
    :cond_44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ">>>>>>>>>>> DATA IS NULL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    :cond_4b
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadPathData(II[F)V

    .line 216
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 87
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->pathString([F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 2

    .line 192
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 193
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

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

    .line 270
    const-string v0, "PathAppend"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "path"

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addPath(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 271
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathAppend["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] += \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->pathString([F)Ljava/lang/String;

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

    .line 60
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 61
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    aget v1, v1, v0

    .line 62
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 63
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

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

    .line 65
    :cond_23
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    aput v1, v2, v0

    .line 60
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_2a
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4

    .line 81
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 82
    return-void
.end method
