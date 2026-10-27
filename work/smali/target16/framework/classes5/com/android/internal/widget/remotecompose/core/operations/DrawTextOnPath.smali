.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawTextOnPath.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawTextOnPath"

.field private static final blacklist OP_CODE:I = 0x35


# instance fields
.field blacklist mHOffset:F

.field blacklist mOutHOffset:F

.field blacklist mOutVOffset:F

.field blacklist mPathId:I

.field public blacklist mTextId:I

.field blacklist mVOffset:F


# direct methods
.method public constructor blacklist <init>(IIFF)V
    .registers 5

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 46
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    .line 47
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    .line 48
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutHOffset:F

    .line 49
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutVOffset:F

    .line 50
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V
    .registers 6

    .line 133
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 135
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 136
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 137
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 138
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 146
    const/16 v0, 0x35

    const-string v1, "DrawTextOnPath"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 147
    const-string v0, "Draw text along path object"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 148
    const/4 v0, 0x0

    const-string/jumbo v1, "textId"

    const-string v2, "id of the text"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 149
    const-string/jumbo v1, "pathId"

    const-string v2, "id of the path"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 150
    const/4 v0, 0x1

    const-string/jumbo v1, "xOffset"

    const-string/jumbo v2, "x Shift of the text"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 151
    const-string/jumbo v1, "yOffset"

    const-string/jumbo v2, "y Shift of the text"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 152
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 119
    const/16 v0, 0x35

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 110
    const-string v0, "DrawTextOnPath"

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

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p0

    .line 99
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;

    invoke-direct {v3, v0, v1, p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;-><init>(IIFF)V

    .line 100
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 6

    .line 156
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->getId(ILcom/android/internal/widget/remotecompose/core/PaintContext;)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutHOffset:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutVOffset:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextOnPath(IIFF)V

    .line 157
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 62
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 63
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 65
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 66
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 68
    :cond_22
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 161
    nop

    .line 162
    const-string v0, "DrawTextOnPath"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "pathId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutVOffset:F

    .line 165
    const-string/jumbo v2, "vOffset"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutHOffset:F

    .line 166
    const-string v2, "hOffset"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 167
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawTextOnPath ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutHOffset:F

    .line 83
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutVOffset:F

    .line 85
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 54
    nop

    .line 55
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_16

    :cond_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    :goto_16
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutHOffset:F

    .line 56
    nop

    .line 57
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    goto :goto_2e

    :cond_2c
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    :goto_2e
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutVOffset:F

    .line 58
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 72
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 73
    return-void
.end method
