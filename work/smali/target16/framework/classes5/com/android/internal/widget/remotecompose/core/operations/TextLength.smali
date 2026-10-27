.class public Lcom/android/internal/widget/remotecompose/core/operations/TextLength;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "TextLength.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TextLength"

.field private static final blacklist OP_CODE:I = 0x9c


# instance fields
.field public blacklist mLengthId:I

.field public blacklist mTextId:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3

    .line 37
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->mLengthId:I

    .line 39
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->mTextId:I

    .line 40
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V
    .registers 4

    .line 79
    const/16 v0, 0x9c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 82
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 102
    const/16 v0, 0x9c

    const-string v1, "TextLength"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 103
    const-string v0, "get the length of the text and store in float table"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 104
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of float length"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 105
    const-string/jumbo v1, "value"

    const-string v2, "index of text"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 106
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 68
    const/16 v0, 0x9c

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 59
    const-string v0, "TextLength"

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

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    .line 93
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 110
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->mLengthId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->mTextId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 111
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextLength["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->mLengthId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4

    .line 44
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->mLengthId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->mTextId:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 45
    return-void
.end method
