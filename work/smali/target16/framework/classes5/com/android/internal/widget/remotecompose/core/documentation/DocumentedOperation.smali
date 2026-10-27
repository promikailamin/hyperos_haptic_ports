.class public Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
.super Ljava/lang/Object;
.source "DocumentedOperation.java"


# static fields
.field public static final blacklist BOOLEAN:I = 0x2

.field public static final blacklist BUFFER:I = 0x4

.field public static final blacklist BYTE:I = 0x6

.field public static final blacklist BYTE_ARRAY:I = 0xc

.field public static final blacklist FLOAT:I = 0x1

.field public static final blacklist FLOAT_ARRAY:I = 0xa

.field public static final blacklist INT:I = 0x0

.field public static final blacklist INT_ARRAY:I = 0xb

.field public static final blacklist LAYOUT:I = 0x0

.field public static final blacklist LONG:I = 0x8

.field public static final blacklist SHORT:I = 0x9

.field public static final blacklist UTF8:I = 0x5

.field public static final blacklist VALUE:I = 0x7


# instance fields
.field final blacklist mCategory:Ljava/lang/String;

.field blacklist mDescription:Ljava/lang/String;

.field blacklist mExamples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mExamplesHeight:I

.field blacklist mExamplesWidth:I

.field blacklist mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mId:I

.field final blacklist mName:Ljava/lang/String;

.field blacklist mTextExamples:Ljava/lang/String;

.field blacklist mVarSize:Ljava/lang/String;

.field blacklist mWIP:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 100
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 7

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mDescription:Ljava/lang/String;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamples:Ljava/util/ArrayList;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    .line 49
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    .line 50
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesWidth:I

    .line 51
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesHeight:I

    .line 92
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mCategory:Ljava/lang/String;

    .line 93
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mId:I

    .line 94
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mName:Ljava/lang/String;

    .line 95
    iput-boolean p4, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mWIP:Z

    .line 96
    return-void
.end method

.method public static blacklist getType(I)Ljava/lang/String;
    .registers 1

    .line 61
    packed-switch p0, :pswitch_data_2a

    .line 87
    :pswitch_3
    const-string p0, "UNKNOWN"

    return-object p0

    .line 85
    :pswitch_6
    const-string p0, "byte[]"

    return-object p0

    .line 83
    :pswitch_9
    const-string p0, "INT[]"

    return-object p0

    .line 81
    :pswitch_c
    const-string p0, "FLOAT[]"

    return-object p0

    .line 79
    :pswitch_f
    const-string p0, "SHORT"

    return-object p0

    .line 77
    :pswitch_12
    const-string p0, "LONG"

    return-object p0

    .line 75
    :pswitch_15
    const-string p0, "VALUE"

    return-object p0

    .line 73
    :pswitch_18
    const-string p0, "BYTE"

    return-object p0

    .line 71
    :pswitch_1b
    const-string p0, "UTF8"

    return-object p0

    .line 69
    :pswitch_1e
    const-string p0, "BUFFER"

    return-object p0

    .line 67
    :pswitch_21
    const-string p0, "BOOLEAN"

    return-object p0

    .line 65
    :pswitch_24
    const-string p0, "FLOAT"

    return-object p0

    .line 63
    :pswitch_27
    const-string p0, "INT"

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_3
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mDescription:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public blacklist exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 5

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamples:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    return-object p0
.end method

.method public blacklist examples(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mTextExamples:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public blacklist examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 3

    .line 260
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesWidth:I

    .line 261
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesHeight:I

    .line 262
    return-object p0
.end method

.method public blacklist field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 6

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-object p0
.end method

.method public blacklist field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 7

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    return-object p0
.end method

.method public blacklist getCategory()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExamples()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getExamplesHeight()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesHeight:I

    return v0
.end method

.method public blacklist getExamplesWidth()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mExamplesWidth:I

    return v0
.end method

.method public blacklist getFields()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mId:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSizeFields()I
    .registers 7

    .line 135
    nop

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    .line 138
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->getSize()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 139
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->getSize()I

    move-result v4

    if-gez v4, :cond_4d

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->getVarSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x 4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    .line 142
    :cond_4d
    goto :goto_d

    .line 143
    :cond_4e
    return v2
.end method

.method public blacklist getTextExamples()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mTextExamples:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVarSize()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mVarSize:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isWIP()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mWIP:Z

    return v0
.end method

.method public blacklist possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;
    .registers 6

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->possibleValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_2e
    return-object p0
.end method
