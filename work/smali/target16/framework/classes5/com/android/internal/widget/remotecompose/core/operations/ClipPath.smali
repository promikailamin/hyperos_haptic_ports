.class public Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ClipPath.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ClipPath"

.field public static final blacklist DIFFERENCE:I = 0x1

.field public static final blacklist INTERSECT:I = 0x2

.field private static final blacklist OP_CODE:I = 0x26

.field public static final blacklist PATH_CLIP_DIFFERENCE:I = 0x1

.field public static final blacklist PATH_CLIP_INTERSECT:I = 0x2

.field public static final blacklist PATH_CLIP_REPLACE:I = 0x0

.field public static final blacklist PATH_CLIP_REVERSE_DIFFERENCE:I = 0x5

.field public static final blacklist PATH_CLIP_UNDEFINED:I = 0x6

.field public static final blacklist PATH_CLIP_UNION:I = 0x3

.field public static final blacklist PATH_CLIP_XOR:I = 0x4

.field public static final blacklist REPLACE:I = 0x0

.field public static final blacklist REVERSE_DIFFERENCE:I = 0x5

.field public static final blacklist UNDEFINED:I = 0x6

.field public static final blacklist UNION:I = 0x3

.field public static final blacklist XOR:I = 0x4


# instance fields
.field blacklist mId:I

.field blacklist mRegionOp:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    .line 44
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mRegionOp:I

    .line 45
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V
    .registers 3

    .line 114
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 116
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 124
    const/16 v0, 0x26

    const-string v1, "ClipPath"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 125
    const-string v0, "Intersect the current clip with the path"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 126
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of the path"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 127
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 104
    const/16 v0, 0x26

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 95
    const-string v0, "ClipPath"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    .line 82
    const v0, 0xfffff

    and-int/2addr v0, p0

    .line 83
    shr-int/lit8 p0, p0, 0x18

    .line 84
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;-><init>(II)V

    .line 85
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 4

    .line 131
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mRegionOp:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipPath(II)V

    .line 132
    return-void
.end method

.method blacklist regionOpToString()Ljava/lang/String;
    .registers 2

    .line 140
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mRegionOp:I

    packed-switch v0, :pswitch_data_18

    .line 152
    :pswitch_5
    const-string v0, "UNDEFINED"

    return-object v0

    .line 150
    :pswitch_8
    const-string v0, "REVERSE_DIFFERENCE"

    return-object v0

    .line 148
    :pswitch_b
    const-string v0, "XOR"

    return-object v0

    .line 146
    :pswitch_e
    const-string v0, "INTERSECT"

    return-object v0

    .line 144
    :pswitch_11
    const-string v0, "DIFFERENCE"

    return-object v0

    .line 142
    :pswitch_14
    const-string v0, "REPLACE"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_5
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 136
    const-string v0, "ClipPath"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "regionOp"

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->regionOpToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 137
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClipPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 3

    .line 65
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 66
    return-void
.end method
