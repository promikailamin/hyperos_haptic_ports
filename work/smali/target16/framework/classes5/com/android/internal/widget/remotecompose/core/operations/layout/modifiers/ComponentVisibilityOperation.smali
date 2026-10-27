.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ComponentVisibilityOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;


# static fields
.field private static final blacklist OP_CODE:I = 0xd3


# instance fields
.field private blacklist mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

.field blacklist mVisibility:I

.field blacklist mVisibilityId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    .line 47
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    .line 48
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

    .line 49
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V
    .registers 3

    .line 91
    const/16 v0, 0xd3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 93
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 112
    const/16 v0, 0xd3

    const-string v1, "ComponentVisibility"

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 113
    const-string v0, "This operation allows setting a componentvisibility from a provided value"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 116
    const/4 v0, 0x0

    const-string v1, "VALUE_ID"

    const-string v2, "Value ID representing the visibility"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 117
    return-void
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

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    .line 103
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2

    .line 73
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    const-string p1, ""

    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5

    .line 150
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 121
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 122
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 155
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 156
    const-string v0, "ComponentVisibilityOperation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "visibilityId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    .line 158
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "visibility"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 159
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->serializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public blacklist serializedName()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "COMPONENT_VISIBILITY"

    return-object v0
.end method

.method public blacklist setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 143
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentVisibilityOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 126
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibilityId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result p1

    .line 127
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 128
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    goto :goto_26

    .line 129
    :cond_10
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isGone(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 130
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    goto :goto_26

    .line 131
    :cond_1a
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isInvisible(I)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 132
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    goto :goto_26

    .line 134
    :cond_24
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    .line 136
    :goto_26
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz p1, :cond_31

    .line 137
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->mVisibility:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setVisibility(I)V

    .line 139
    :cond_31
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 82
    return-void
.end method
