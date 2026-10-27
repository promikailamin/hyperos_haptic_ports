.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawToBitmap.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawToBitmap"

.field public static final blacklist MODE_NO_INITIALIZE:I = 0x1

.field private static final blacklist OP_CODE:I = 0xbe


# instance fields
.field private final blacklist mBitmapId:I

.field private final blacklist mColor:I

.field private final blacklist mMode:I


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 4

    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->mBitmapId:I

    .line 44
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->mMode:I

    .line 45
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->mColor:I

    .line 46
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V
    .registers 5

    .line 101
    const/16 v0, 0xbe

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 104
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 105
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 113
    const/16 v0, 0xbe

    const-string v1, "DrawToBitmap"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 114
    const-string v0, "Draw to a bitmap"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 115
    const/4 v0, 0x0

    const-string v1, "bitmapId"

    const-string v2, "The bitmap to draw to or 0 to draw to the canvas"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 119
    const-string v1, "mode"

    const-string v2, "Flags to support configuration of bitmap"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 120
    const-string v1, "color"

    const-string/jumbo v2, "set the initial of the bitmap"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 121
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 89
    const/16 v0, 0xbe

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 80
    const-string v0, "DrawToBitmap"

    return-object v0
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

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    .line 63
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;-><init>(III)V

    .line 64
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 5

    .line 125
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->mBitmapId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->getId(ILcom/android/internal/widget/remotecompose/core/PaintContext;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->mColor:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawToBitmap(III)V

    .line 126
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 130
    const-string v0, "DrawToBitmap"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->mBitmapId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bitmapId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 131
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 70
    const-string v0, "DrawToBitmap"

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 50
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->mBitmapId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->mColor:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 51
    return-void
.end method
