.class public Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "LongConstant.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "LongConstant"

.field private static final blacklist OP_CODE:I = 0x94


# instance fields
.field public final blacklist mId:I

.field private blacklist mValue:J


# direct methods
.method public constructor blacklist <init>(IJ)V
    .registers 4

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mId:I

    .line 47
    iput-wide p2, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mValue:J

    .line 48
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IJ)V
    .registers 5

    .line 107
    const/16 v0, 0x94

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 109
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 110
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 131
    const/16 v0, 0x94

    const-string v1, "LongConstant"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 132
    const-string v0, "A boolean and its associated id"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 133
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of Int"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 134
    const/16 v0, 0x8

    const-string/jumbo v1, "value"

    const-string v2, "The long Value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 135
    return-void
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

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v1

    .line 122
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;-><init>(IJ)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 84
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getValue()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mValue:J

    return-wide v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 139
    const-string v0, "LongConstant"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 140
    return-void
.end method

.method public blacklist setValue(J)V
    .registers 3

    .line 74
    iput-wide p1, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mValue:J

    .line 75
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LongConstant["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update(Lcom/android/internal/widget/remotecompose/core/types/LongConstant;)V
    .registers 4

    .line 56
    iget-wide v0, p1, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mValue:J

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mValue:J

    .line 57
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 79
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mId:I

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mValue:J

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IJ)V

    .line 80
    return-void
.end method
