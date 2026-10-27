.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ImpulseOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ImpulseOperation"

.field private static final blacklist OP_CODE:I = 0xa4


# instance fields
.field private blacklist mDuration:F

.field blacklist mIndexVariableId:I

.field private blacklist mInitialPass:Z

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOutDuration:F

.field private blacklist mOutStartAt:F

.field private blacklist mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

.field private blacklist mStartAt:F


# direct methods
.method public constructor blacklist <init>(FF)V
    .registers 4

    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mInitialPass:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    .line 61
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    .line 62
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    .line 63
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutStartAt:F

    .line 64
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutDuration:F

    .line 65
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
    .registers 4

    .line 182
    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 184
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 185
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 206
    const/16 v0, 0xa4

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 207
    const-string v0, "Impulse Operation. This operation execute a list of action for a fixed duration"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 210
    const/4 v0, 0x1

    const-string v1, "duration"

    const-string v2, "How long to last"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 211
    const-string/jumbo v1, "startAt"

    const-string/jumbo v2, "value step"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 212
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 171
    const-string v0, "ImpulseOperation"

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

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v0

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p0

    .line 197
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;-><init>(FF)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    const-string p1, ""

    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist estimateIterations()I
    .registers 3

    .line 220
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    const/16 v0, 0xa

    return v0

    .line 223
    :cond_b
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

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

    .line 110
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 7

    .line 141
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutStartAt:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutDuration:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_57

    .line 144
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mInitialPass:Z

    if-eqz v1, :cond_4a

    .line 145
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 146
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v3, :cond_3b

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 147
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 149
    :cond_3b
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 150
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 151
    goto :goto_1b

    .line 152
    :cond_46
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mInitialPass:Z

    goto :goto_5a

    .line 154
    :cond_4a
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    if-eqz v0, :cond_5a

    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_5a

    .line 160
    :cond_57
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mInitialPass:Z

    .line 162
    :cond_5a
    :goto_5a
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    if-nez v0, :cond_29

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "....."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 72
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    if-eqz v1, :cond_29

    .line 73
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    .line 74
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_29
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 78
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 80
    :cond_3a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 81
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 83
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 84
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_66

    .line 85
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 86
    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 88
    :cond_66
    goto :goto_51

    .line 89
    :cond_67
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    if-eqz v0, :cond_70

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 92
    :cond_70
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 237
    nop

    .line 238
    const-string v0, "ImpulseOperation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutDuration:F

    .line 239
    const-string v2, "duration"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutStartAt:F

    .line 240
    const-string/jumbo v2, "startAt"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 241
    return-void
.end method

.method public blacklist setProcess(Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    .line 233
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImpulseOperation\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, "  startAt: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, " duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    goto :goto_d

    .line 130
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 97
    nop

    .line 98
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_16

    :cond_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    :goto_16
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutDuration:F

    .line 100
    nop

    .line 101
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2e

    :cond_2c
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    :goto_2e
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mOutStartAt:F

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    if-eqz v0, :cond_39

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mProcess:Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 105
    :cond_39
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4

    .line 115
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mDuration:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->mStartAt:F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 116
    return-void
.end method
