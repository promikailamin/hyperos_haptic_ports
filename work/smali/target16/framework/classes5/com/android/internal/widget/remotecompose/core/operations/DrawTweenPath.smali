.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawTweenPath.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawTweenPath"

.field private static final blacklist OP_CODE:I = 0x7d


# instance fields
.field blacklist mOutStart:F

.field blacklist mOutStop:F

.field blacklist mOutTween:F

.field blacklist mPath1Id:I

.field blacklist mPath2Id:I

.field blacklist mStart:F

.field blacklist mStop:F

.field blacklist mTween:F


# direct methods
.method public constructor blacklist <init>(IIFFF)V
    .registers 6

    .line 47
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 48
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutTween:F

    .line 49
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutStart:F

    .line 50
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutStop:F

    .line 51
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath1Id:I

    .line 52
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath2Id:I

    .line 53
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFF)V
    .registers 7

    .line 148
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 150
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 151
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 152
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 153
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 154
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 162
    const/16 v0, 0x7d

    const-string v1, "DrawTweenPath"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 163
    const-string v0, "Draw text along path object"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 164
    const/4 v0, 0x0

    const-string/jumbo v1, "pathId1"

    const-string v2, "id of path 1 high short is flags"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 165
    const-string/jumbo v1, "pathId2"

    const-string v2, "id of path 2 high short is flags"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 166
    const/4 v0, 0x1

    const-string/jumbo v1, "tween"

    const-string v2, "interpolate between the two paths"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 167
    const-string/jumbo v1, "start"

    const-string/jumbo v2, "trim the start of the path"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 168
    const-string/jumbo v1, "yOffset"

    const-string/jumbo v2, "trim the end of the path"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 169
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 128
    const/16 v0, 0x7d

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 119
    const-string v0, "DrawTweenPath"

    return-object v0
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

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 108
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;-><init>(IIFFF)V

    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 9

    .line 173
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath1Id:I

    .line 174
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->getId(ILcom/android/internal/widget/remotecompose/core/PaintContext;)I

    move-result v2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath2Id:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->getId(ILcom/android/internal/widget/remotecompose/core/PaintContext;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutTween:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutStart:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutStop:F

    .line 173
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTweenPath(IIFFF)V

    .line 175
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 65
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 67
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 68
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 70
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 71
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 73
    :cond_33
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 179
    nop

    .line 180
    const-string v0, "DrawTweenPath"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath1Id:I

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "path1Id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath2Id:I

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "path2Id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutTween:F

    .line 183
    const-string/jumbo v2, "tween"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutStart:F

    .line 184
    const-string/jumbo v2, "start"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutStop:F

    .line 185
    const-string/jumbo v2, "stop"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 186
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawTweenPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath1Id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath2Id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutTween:F

    .line 88
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutStart:F

    .line 90
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutStop:F

    .line 93
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 57
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutTween:F

    .line 58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutStart:F

    .line 59
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    goto :goto_43

    :cond_41
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    :goto_43
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mOutStop:F

    .line 60
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8

    .line 77
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath1Id:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mPath2Id:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mTween:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStart:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->mStop:F

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFF)V

    .line 78
    return-void
.end method
