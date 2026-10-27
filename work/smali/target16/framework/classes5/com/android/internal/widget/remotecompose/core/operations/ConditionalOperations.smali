.class public Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ConditionalOperations.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ConditionalOperations"

.field private static final blacklist OP_CODE:I = 0xb2

.field public static final blacklist TYPE_EQ:B = 0x0t

.field public static final blacklist TYPE_GT:B = 0x4t

.field public static final blacklist TYPE_GTE:B = 0x5t

.field public static final blacklist TYPE_LT:B = 0x2t

.field public static final blacklist TYPE_LTE:B = 0x3t

.field public static final blacklist TYPE_NEQ:B = 0x1t

.field private static final blacklist TYPE_STR:[Ljava/lang/String;


# instance fields
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

.field blacklist mType:B

.field blacklist mVarA:F

.field blacklist mVarAOut:F

.field blacklist mVarB:F

.field blacklist mVarBOut:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 70
    const-string v4, "GT"

    const-string v5, "GTE"

    const-string v0, "EQ"

    const-string v1, "NEQ"

    const-string v2, "LT"

    const-string v3, "LTE"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->TYPE_STR:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(BFF)V
    .registers 5

    .line 100
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    .line 101
    iput-byte p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    .line 102
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    .line 103
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    .line 104
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;BFF)V
    .registers 5

    .line 202
    const/16 v0, 0xb2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 204
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 205
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 206
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 227
    const/16 v0, 0xb2

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 228
    const-string v0, "Run if the condition is true"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 229
    const/4 v0, 0x6

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "type of comparison"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 230
    const/4 v0, 0x1

    const-string v1, "a"

    const-string v2, "first value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 231
    const-string v1, "b"

    const-string/jumbo v2, "second value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 232
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 190
    const-string v0, "ConditionalOperations"

    return-object v0
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

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    int-to-byte v0, v0

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p0

    .line 218
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;-><init>(BFF)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    const-string p1, ""

    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist estimateIterations()I
    .registers 2

    .line 240
    const/4 v0, 0x1

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

    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 7

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 149
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v4, :cond_2c

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 150
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 151
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v3, v1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 153
    :cond_2c
    goto :goto_e

    .line 154
    :cond_2d
    nop

    .line 155
    iget-byte v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_9e

    goto :goto_7d

    .line 172
    :pswitch_36
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    :goto_40
    move v3, v2

    goto :goto_7d

    .line 169
    :pswitch_42
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v3

    .line 170
    :goto_4c
    move v3, v2

    goto :goto_7d

    .line 166
    :pswitch_4e
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_57

    goto :goto_58

    :cond_57
    move v2, v3

    .line 167
    :goto_58
    move v3, v2

    goto :goto_7d

    .line 163
    :pswitch_5a
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_63

    goto :goto_64

    :cond_63
    move v2, v3

    .line 164
    :goto_64
    move v3, v2

    goto :goto_7d

    .line 160
    :pswitch_66
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6f

    goto :goto_70

    :cond_6f
    move v2, v3

    .line 161
    :goto_70
    move v3, v2

    goto :goto_7d

    .line 157
    :pswitch_72
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_7b

    goto :goto_7c

    :cond_7b
    move v2, v3

    .line 158
    :goto_7c
    move v3, v2

    .line 175
    :goto_7d
    if-eqz v3, :cond_9c

    .line 176
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 177
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 178
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 179
    goto :goto_85

    .line 181
    :cond_9c
    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_72
        :pswitch_66
        :pswitch_5a
        :pswitch_4e
        :pswitch_42
        :pswitch_36
    .end packed-switch
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 74
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 77
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 78
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 80
    :cond_22
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 245
    nop

    .line 246
    const-string v0, "ConditionalOperations"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-byte v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    .line 247
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Byte;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    .line 248
    const-string/jumbo v2, "varA"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    .line 249
    const-string v2, "VarB"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    .line 250
    const-string v1, "list"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 251
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConditionalOperations "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->TYPE_STR:[Ljava/lang/String;

    iget-byte v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    .line 126
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    .line 128
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 131
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    goto :goto_4a

    .line 135
    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 84
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    .line 85
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 87
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_4f

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 88
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 90
    :cond_4f
    goto :goto_34

    .line 91
    :cond_50
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 114
    iget-byte v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;BFF)V

    .line 115
    return-void
.end method
