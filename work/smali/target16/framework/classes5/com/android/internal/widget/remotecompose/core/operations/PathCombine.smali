.class public Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "PathCombine.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "PathCombine"

.field private static final blacklist OP_CODE:I = 0xaf

.field public static final blacklist OP_DIFFERENCE:B = 0x0t

.field public static final blacklist OP_INTERSECT:B = 0x1t

.field public static final blacklist OP_REVERSE_DIFFERENCE:B = 0x2t

.field public static final blacklist OP_UNION:B = 0x3t

.field public static final blacklist OP_XOR:B = 0x4t


# instance fields
.field private blacklist mOperation:B

.field public blacklist mOutId:I

.field public blacklist mPathId1:I

.field public blacklist mPathId2:I


# direct methods
.method public constructor blacklist <init>(IIIB)V
    .registers 5

    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 61
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOutId:I

    .line 62
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId1:I

    .line 63
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId2:I

    .line 64
    iput-byte p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOperation:B

    .line 65
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIB)V
    .registers 6

    .line 122
    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 125
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 126
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 127
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 149
    const/16 v0, 0xaf

    const-string v1, "PathCombine"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 150
    const-string v0, "Merge two string into one"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 151
    const/4 v0, 0x0

    const-string/jumbo v1, "srcPathId1"

    const-string v2, "id of the path"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 152
    const-string/jumbo v2, "x Shift of the path"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 153
    const/4 v0, 0x6

    const-string/jumbo v1, "operation"

    const-string/jumbo v2, "the operation"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 154
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 108
    const/16 v0, 0xaf

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 99
    const-string v0, "PathCombine"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result p0

    int-to-byte p0, p0

    .line 140
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;-><init>(IIIB)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 6

    .line 164
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOutId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId1:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId2:I

    iget-byte v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOperation:B

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->combinePath(IIIB)V

    .line 165
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2

    .line 71
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 169
    nop

    .line 170
    const-string v0, "PathCombine"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOutId:I

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "outId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId1:I

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "pathId1"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId2:I

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "pathId2"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-byte v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOperation:B

    .line 174
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string/jumbo v1, "operation"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Byte;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 175
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathCombine["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] + [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOperation:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2

    .line 68
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOutId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId1:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId2:I

    iget-byte v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOperation:B

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIB)V

    .line 76
    return-void
.end method
