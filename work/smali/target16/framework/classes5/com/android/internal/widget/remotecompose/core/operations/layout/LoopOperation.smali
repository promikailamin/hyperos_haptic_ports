.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "LoopOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "LoopOperation"

.field private static final blacklist OP_CODE:I = 0xd7


# instance fields
.field blacklist mFrom:F

.field blacklist mFromOut:F

.field blacklist mIndexVariableId:I

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mStep:F

.field blacklist mStepOut:F

.field blacklist mUntil:F

.field blacklist mUntilOut:F


# direct methods
.method public constructor blacklist <init>(IFFF)V
    .registers 6

    .line 83
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mList:Ljava/util/ArrayList;

    .line 84
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntil:F

    .line 85
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFrom:F

    .line 86
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStep:F

    .line 87
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mIndexVariableId:I

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4

    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mList:Ljava/util/ArrayList;

    .line 54
    int-to-float p1, p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntil:F

    .line 55
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mIndexVariableId:I

    .line 56
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V
    .registers 6

    .line 164
    const/16 v0, 0xd7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 166
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 167
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 168
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 169
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 191
    const/16 v0, 0xd7

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 192
    const-string v0, "Loop. This operation execute a list of action in a loop"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 193
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "if not 0 write value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 194
    const/4 v0, 0x1

    const-string v1, "from"

    const-string/jumbo v2, "values starts at"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 195
    const-string/jumbo v1, "step"

    const-string/jumbo v2, "value step"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 196
    const-string/jumbo v1, "until"

    const-string/jumbo v2, "stops less than or equal"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 197
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 150
    const-string v0, "Loop"

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

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p0

    .line 182
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;-><init>(IFFF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    const-string p1, ""

    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist estimateIterations()I
    .registers 3

    .line 205
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntil:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_25

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFrom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_25

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStep:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_25

    .line 206
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntil:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFrom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStep:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 208
    :cond_25
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 8

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 122
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mIndexVariableId:I

    if-nez v1, :cond_31

    .line 123
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFromOut:F

    :goto_a
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntilOut:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_77

    .line 124
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 125
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 126
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 127
    goto :goto_16

    .line 123
    :cond_2d
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStepOut:F

    add-float/2addr v1, v2

    goto :goto_a

    .line 130
    :cond_31
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFromOut:F

    :goto_33
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntilOut:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_77

    .line 131
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mIndexVariableId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 132
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 133
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v4, :cond_68

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 134
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 136
    :cond_68
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 137
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 138
    goto :goto_48

    .line 130
    :cond_73
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStepOut:F

    add-float/2addr v1, v2

    goto :goto_33

    .line 141
    :cond_77
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntil:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntil:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 63
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFrom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFrom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 66
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStep:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 67
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStep:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 69
    :cond_33
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 213
    nop

    .line 214
    const-string v0, "LoopOperation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mIndexVariableId:I

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "indexVariableId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntil:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntilOut:F

    .line 216
    const-string/jumbo v2, "until"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFrom:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFromOut:F

    .line 217
    const-string v2, "from"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStep:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStepOut:F

    .line 218
    const-string/jumbo v2, "step"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mList:Ljava/util/ArrayList;

    .line 219
    const-string v1, "list"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 220
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoopOperation\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 106
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    goto :goto_d

    .line 110
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 73
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntil:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntil:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntil:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntilOut:F

    .line 74
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFrom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFrom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFrom:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFromOut:F

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStep:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStep:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_43

    :cond_41
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStep:F

    :goto_43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStepOut:F

    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 77
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_66

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 78
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 80
    :cond_66
    goto :goto_4b

    .line 81
    :cond_67
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 98
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mIndexVariableId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mFrom:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mStep:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->mUntil:F

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    .line 99
    return-void
.end method
