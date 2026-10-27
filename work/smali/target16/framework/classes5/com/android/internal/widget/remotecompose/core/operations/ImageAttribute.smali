.class public Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ImageAttribute.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ImageAttribute"

.field public static final blacklist IMAGE_HEIGHT:S = 0x1s

.field public static final blacklist IMAGE_WIDTH:S = 0x0s

.field private static final blacklist OP_CODE:I = 0xab


# instance fields
.field private final blacklist mArgs:[I

.field public blacklist mId:I

.field blacklist mImageId:I

.field blacklist mType:S


# direct methods
.method public constructor blacklist <init>(IIS[I)V
    .registers 5

    .line 55
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 56
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    .line 57
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mImageId:I

    .line 58
    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mType:S

    .line 59
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mArgs:[I

    .line 60
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V
    .registers 6

    .line 101
    const/16 v0, 0xab

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 104
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 105
    const/4 p1, 0x0

    if-nez p4, :cond_15

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    goto :goto_26

    .line 108
    :cond_15
    array-length p2, p4

    int-to-short p2, p2

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 109
    nop

    :goto_1b
    array-length p2, p4

    if-ge p1, p2, :cond_26

    .line 110
    aget p2, p4, p1

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 109
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 113
    :cond_26
    :goto_26
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5

    .line 139
    const/16 v0, 0xab

    const-string v1, "ImageAttribute"

    const-string v2, "Image Attributes"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 140
    const-string v0, "Measure text"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 141
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of float result of the measure"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 142
    const-string v1, "ImageId"

    const-string v2, "id of the image"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 143
    const/16 v1, 0x9

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "type: measure 0=width,1=height"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 144
    const-string v2, "len"

    const-string v3, "number of additional arguments (currently 0)"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 145
    const-string v1, "a"

    const-string v3, "number of arguments"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 146
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 87
    const/16 v0, 0xab

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 78
    const-string v0, "ImageAttribute"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v2

    int-to-short v2, v2

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v3

    int-to-short v3, v3

    .line 126
    new-array v4, v3, [I

    .line 127
    const/4 v5, 0x0

    :goto_15
    if-ge v5, v3, :cond_20

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    aput v6, v4, v5

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 130
    :cond_20
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;-><init>(IIS[I)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method private blacklist typeToString()Ljava/lang/String;
    .registers 2

    .line 178
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mType:S

    packed-switch v0, :pswitch_data_e

    .line 184
    const-string v0, "INVALID_TYPE"

    return-object v0

    .line 182
    :pswitch_8
    const-string v0, "IMAGE_HEIGHT"

    return-object v0

    .line 180
    :pswitch_b
    const-string v0, "IMAGE_WIDTH"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 4

    .line 156
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mImageId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 157
    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mType:S

    packed-switch v1, :pswitch_data_32

    goto :goto_30

    .line 162
    :pswitch_12
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_30

    .line 159
    :pswitch_21
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 160
    nop

    .line 165
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_21
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 169
    nop

    .line 170
    const-string v0, "ImageAttribute"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mImageId:I

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imageId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mArgs:[I

    .line 173
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "args"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 174
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->typeToString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 175
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageAttribute["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mImageId:I

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mType:S

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->mArgs:[I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    .line 65
    return-void
.end method
