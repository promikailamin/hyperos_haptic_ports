.class public Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "DataMapLookup.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DataMapLookup"

.field private static final blacklist OP_CODE:I = 0x9a


# instance fields
.field public blacklist mDataMapId:I

.field public blacklist mId:I

.field public blacklist mStringId:I


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 4

    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    .line 50
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    .line 51
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    .line 52
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V
    .registers 5

    .line 93
    const/16 v0, 0x9a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 95
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 96
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 97
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 118
    const/16 v0, 0x9a

    const-string v1, "DataMapLookup"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 119
    const-string v0, "Look up a value in a data map"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 120
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of float"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 121
    const-string v1, "dataMapId"

    const-string v2, "32-bit float value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 122
    const-string/jumbo v1, "stringId"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 123
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 81
    const/16 v0, 0x9a

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 72
    const-string v0, "DataMapLookup"

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

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    .line 109
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;-><init>(III)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6

    .line 127
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->getPos(Ljava/lang/String;)I

    move-result v0

    .line 130
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->getType(I)B

    move-result v2

    .line 131
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->getId(I)I

    move-result v0

    .line 132
    packed-switch v2, :pswitch_data_5c

    goto :goto_5b

    .line 147
    :pswitch_1c
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;

    .line 148
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->getValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    goto :goto_5b

    .line 143
    :pswitch_2c
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 144
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    .line 145
    goto :goto_5b

    .line 140
    :pswitch_3d
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 141
    goto :goto_5b

    .line 137
    :pswitch_47
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    .line 138
    goto :goto_5b

    .line 134
    :pswitch_51
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadText(ILjava/lang/String;)V

    .line 135
    nop

    .line 151
    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_51
        :pswitch_47
        :pswitch_3d
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataMapLookup["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 57
    return-void
.end method
