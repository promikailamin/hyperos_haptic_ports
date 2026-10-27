.class public Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "BooleanConstant.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "BooleanConstant"

.field private static final blacklist OP_CODE:I = 0x8f


# instance fields
.field private blacklist mId:I

.field private blacklist mValue:Z


# direct methods
.method public constructor blacklist <init>(IZ)V
    .registers 4

    .line 41
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->mValue:Z

    .line 42
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->mId:I

    .line 43
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->mValue:Z

    .line 44
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IZ)V
    .registers 4

    .line 102
    const/16 v0, 0x8f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBoolean(Z)V

    .line 105
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 126
    const/16 v0, 0x8f

    const-string v1, "BooleanConstant"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 127
    const-string v0, "A boolean and its associated id"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 128
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of Int"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 129
    const/4 v0, 0x6

    const-string/jumbo v1, "value"

    const-string v2, "8-bit 0 or 1"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 130
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 91
    const/16 v0, 0x8f

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 82
    const-string v0, "OrigamiBoolean"

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

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBoolean()Z

    move-result p0

    .line 117
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;-><init>(IZ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2

    .line 61
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getValue()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->mValue:Z

    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 134
    const-string v0, "BooleanConstant"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->mValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 135
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BooleanConstant["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->mValue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4

    .line 57
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->mId:I

    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->mValue:Z

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IZ)V

    .line 58
    return-void
.end method
