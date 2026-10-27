.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
.source "RoundedClipRectModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "RoundedClipRectModifierOperation"

.field public static final blacklist OP_CODE:I = 0x36


# instance fields
.field blacklist mHeight:F

.field blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>(FFFF)V
    .registers 5

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;-><init>(FFFF)V

    .line 114
    const-string p1, "RoundedClipRectModifierOperation"

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .registers 11

    .line 166
    const/16 v1, 0x36

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V

    .line 167
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 84
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->id()I

    move-result v0

    const-string v1, "RoundedClipRectModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 85
    const-string v0, "clip with rectangle"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 86
    const/4 v0, 0x1

    const-string/jumbo v1, "topStart"

    const-string v2, "The topStart radius of the rectangle to intersect with the current clip"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 91
    const-string/jumbo v1, "topEnd"

    const-string v2, "The topEnd radius of the rectangle to intersect with the current clip"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 96
    const-string v1, "bottomStart"

    const-string v2, "The bottomStart radius of the rectangle to intersect with the current clip"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 101
    const-string v1, "bottomEnd"

    const-string v2, "The bottomEnd radius of the rectangle to intersect with the current clip"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 106
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 60
    const/16 v0, 0x36

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 70
    const-string v0, "RoundedClipRectModifierOperation"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation$$ExternalSyntheticLambda0;-><init>()V

    .line 51
    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;)V

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5

    .line 128
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mWidth:F

    .line 129
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mHeight:F

    .line 130
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 9

    .line 119
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mWidth:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mHeight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mX1:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mY1:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mX2:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mY2:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->roundedClipRect(FFFFFF)V

    .line 120
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 8

    .line 171
    const-string v4, "bottomStart"

    const-string v5, "bottomEnd"

    const-string/jumbo v2, "topStart"

    const-string/jumbo v3, "topEnd"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v3, v1, v2

    .line 172
    invoke-interface {p1, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 173
    const-string v1, "RoundedClipRectModifierOperation"

    invoke-interface {p1, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mWidth:F

    .line 174
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-interface {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mHeight:F

    .line 175
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 176
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ROUNDED_CLIP_RECT = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mHeight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mX1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mY1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mX2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->mY2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 149
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .registers 6

    .line 75
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 76
    return-void
.end method
