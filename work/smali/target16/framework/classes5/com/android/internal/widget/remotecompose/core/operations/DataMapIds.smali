.class public Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "DataMapIds.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DataMapIds"

.field private static final blacklist MAX_MAP:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0x91

.field public static final blacklist TYPE_BOOLEAN:B = 0x4t

.field public static final blacklist TYPE_FLOAT:B = 0x2t

.field public static final blacklist TYPE_INT:B = 0x1t

.field public static final blacklist TYPE_LONG:B = 0x3t

.field public static final blacklist TYPE_STRING:B


# instance fields
.field final blacklist mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

.field blacklist mId:I


# direct methods
.method public constructor blacklist <init>(I[Ljava/lang/String;[B[I)V
    .registers 5

    .line 66
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 67
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    .line 68
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;-><init>([Ljava/lang/String;[B[I)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    .line 69
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Ljava/lang/String;[B[I)V
    .registers 6

    .line 108
    const/16 v0, 0x91

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 110
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 111
    const/4 p1, 0x0

    :goto_d
    array-length v0, p2

    if-ge p1, v0, :cond_26

    .line 112
    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 113
    if-nez p3, :cond_19

    const/4 v0, 0x2

    goto :goto_1b

    :cond_19
    aget-byte v0, p3, p1

    :goto_1b
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 114
    aget v0, p4, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 111
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 116
    :cond_26
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5

    .line 148
    const/16 v0, 0x91

    const-string v1, "DataMapIds"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 149
    const-string v0, "Encode a collection of name id pairs"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 150
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id the array"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 151
    const-string v1, "length"

    const-string v2, "number of entries"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 152
    const-string v2, "names[0]"

    const-string/jumbo v3, "path encoded as floats"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 153
    const/4 v0, 0x5

    const-string v2, "id[0]"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 154
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 127
    const/16 v2, 0x7d0

    if-gt v1, v2, :cond_34

    .line 130
    new-array v2, v1, [Ljava/lang/String;

    .line 131
    new-array v3, v1, [I

    .line 132
    new-array v4, v1, [B

    .line 133
    const/4 v5, 0x0

    :goto_13
    if-ge v5, v1, :cond_2b

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    aput v6, v3, v5

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 138
    :cond_2b
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;

    invoke-direct {p0, v0, v2, v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;-><init>(I[Ljava/lang/String;[B[I)V

    .line 139
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void

    .line 128
    :cond_34
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " map entries more than max = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist typeString(B)Ljava/lang/String;
    .registers 2

    .line 50
    packed-switch p1, :pswitch_data_16

    .line 62
    const-string p1, "?"

    return-object p1

    .line 60
    :pswitch_6
    const-string p1, "Boolean"

    return-object p1

    .line 58
    :pswitch_9
    const-string p1, "Long"

    return-object p1

    .line 56
    :pswitch_c
    const-string p1, "Float"

    return-object p1

    .line 54
    :pswitch_f
    const-string p1, "Int"

    return-object p1

    .line 52
    :pswitch_12
    const-string p1, "String"

    return-object p1

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 164
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V

    .line 165
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataMapIds["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    :goto_25
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5f

    .line 81
    if-eqz v1, :cond_33

    .line 82
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_33
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    aget-byte v2, v2, v1

    invoke-direct {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->typeString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 90
    :cond_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 73
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Ljava/lang/String;[B[I)V

    .line 74
    return-void
.end method
