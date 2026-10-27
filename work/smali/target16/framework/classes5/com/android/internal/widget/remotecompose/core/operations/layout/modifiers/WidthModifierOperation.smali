.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;
.source "WidthModifierOperation.java"


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "WidthModifierOperation"

.field private static final blacklist OP_CODE:I = 0x10


# instance fields
.field private blacklist mWidthIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;


# direct methods
.method public constructor blacklist <init>(F)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;-><init>(F)V

    .line 37
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mWidthIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    .line 99
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;)V

    .line 37
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mWidthIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;F)V
    .registers 3

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;F)V

    .line 37
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mWidthIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    .line 86
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V
    .registers 4

    .line 66
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 69
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 119
    const/16 v0, 0x10

    const-string v1, "WidthModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 120
    const-string v0, "define the animation"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 121
    const/4 v0, 0x0

    const-string/jumbo v1, "type"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 122
    const/4 v0, 0x1

    const-string/jumbo v1, "value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 123
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 55
    const/16 v0, 0x10

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 46
    const-string v0, "WidthModifierOperation"

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

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->fromInt(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p0

    .line 80
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;F)V

    .line 81
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method


# virtual methods
.method public blacklist getWidthIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mWidthIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 146
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 147
    const-string v0, "WidthModifierOperation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mOutValue:F

    .line 148
    const-string/jumbo v2, "width"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 149
    const-string v1, "dimensionModifierType"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 150
    return-void
.end method

.method public blacklist serializedName()Ljava/lang/String;
    .registers 2

    .line 110
    const-string v0, "WIDTH"

    return-object v0
.end method

.method public blacklist setWidthIn(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mWidthIn:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    .line 132
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Width("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->mValue:F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 91
    return-void
.end method
