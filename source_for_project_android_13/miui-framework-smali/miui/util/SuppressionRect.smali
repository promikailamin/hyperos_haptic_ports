.class public Lmiui/util/SuppressionRect;
.super Ljava/lang/Object;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/SuppressionRect$bottompRightHalfRect;,
        Lmiui/util/SuppressionRect$bottomLeftHalfRect;,
        Lmiui/util/SuppressionRect$topRightHalfRect;,
        Lmiui/util/SuppressionRect$topLeftHalfRect;,
        Lmiui/util/SuppressionRect$RightBottomHalfRect;,
        Lmiui/util/SuppressionRect$LeftBottomHalfRect;,
        Lmiui/util/SuppressionRect$RightTopHalfRect;,
        Lmiui/util/SuppressionRect$LeftTopHalfRect;
    }
.end annotation


# static fields
.field private static final blacklist NODE_DEFAULT:I

.field private static final blacklist TIME_DEFAULT:I


# instance fields
.field private blacklist bottomRightX:I

.field private blacklist bottomRightY:I

.field private blacklist list:Ljava/util/ArrayList;

.field private blacklist node:I

.field private blacklist position:I

.field private blacklist time:I

.field private blacklist topLeftX:I

.field private blacklist topLeftY:I

.field private blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SuppressionRect;->time:I

    .line 24
    iput v0, p0, Lmiui/util/SuppressionRect;->node:I

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "position"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    .line 28
    iput p1, p0, Lmiui/util/SuppressionRect;->type:I

    .line 29
    iput p2, p0, Lmiui/util/SuppressionRect;->position:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SuppressionRect;->time:I

    .line 31
    iput v0, p0, Lmiui/util/SuppressionRect;->node:I

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist getBottomRightX()I
    .registers 2

    .line 83
    iget v0, p0, Lmiui/util/SuppressionRect;->bottomRightX:I

    return v0
.end method

.method public blacklist getBottomRightY()I
    .registers 2

    .line 87
    iget v0, p0, Lmiui/util/SuppressionRect;->bottomRightY:I

    return v0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_d

    .line 133
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    :cond_d
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->topLeftX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->topLeftY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->bottomRightX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->bottomRightY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->time:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->node:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getNode()I
    .registers 2

    .line 95
    iget v0, p0, Lmiui/util/SuppressionRect;->node:I

    return v0
.end method

.method public blacklist getPosition()I
    .registers 2

    .line 71
    iget v0, p0, Lmiui/util/SuppressionRect;->position:I

    return v0
.end method

.method public blacklist getTime()I
    .registers 2

    .line 91
    iget v0, p0, Lmiui/util/SuppressionRect;->time:I

    return v0
.end method

.method public blacklist getTopLeftX()I
    .registers 2

    .line 75
    iget v0, p0, Lmiui/util/SuppressionRect;->topLeftX:I

    return v0
.end method

.method public blacklist getTopLeftY()I
    .registers 2

    .line 79
    iget v0, p0, Lmiui/util/SuppressionRect;->topLeftY:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 67
    iget v0, p0, Lmiui/util/SuppressionRect;->type:I

    return v0
.end method

.method public blacklist setBottomRightX(I)V
    .registers 2
    .param p1, "bottomRightX"    # I

    .line 51
    iput p1, p0, Lmiui/util/SuppressionRect;->bottomRightX:I

    .line 52
    return-void
.end method

.method public blacklist setBottomRightY(I)V
    .registers 2
    .param p1, "bottomRightY"    # I

    .line 55
    iput p1, p0, Lmiui/util/SuppressionRect;->bottomRightY:I

    .line 56
    return-void
.end method

.method public blacklist setEmpty()V
    .registers 2

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setTopLeftX(I)V

    .line 111
    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setTopLeftY(I)V

    .line 112
    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setBottomRightX(I)V

    .line 113
    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setBottomRightY(I)V

    .line 114
    return-void
.end method

.method public blacklist setNode(I)V
    .registers 2
    .param p1, "node"    # I

    .line 63
    iput p1, p0, Lmiui/util/SuppressionRect;->node:I

    .line 64
    return-void
.end method

.method public blacklist setPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .line 39
    iput p1, p0, Lmiui/util/SuppressionRect;->position:I

    .line 40
    return-void
.end method

.method public blacklist setTime(I)V
    .registers 2
    .param p1, "time"    # I

    .line 59
    iput p1, p0, Lmiui/util/SuppressionRect;->time:I

    .line 60
    return-void
.end method

.method public blacklist setTopLeftX(I)V
    .registers 2
    .param p1, "topLeftX"    # I

    .line 47
    iput p1, p0, Lmiui/util/SuppressionRect;->topLeftX:I

    .line 48
    return-void
.end method

.method public blacklist setTopLeftY(I)V
    .registers 2
    .param p1, "topLeftY"    # I

    .line 43
    iput p1, p0, Lmiui/util/SuppressionRect;->topLeftY:I

    .line 44
    return-void
.end method

.method public blacklist setType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 35
    iput p1, p0, Lmiui/util/SuppressionRect;->type:I

    .line 36
    return-void
.end method

.method public blacklist setValue(IIIIII)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "position"    # I
    .param p3, "topLeftX"    # I
    .param p4, "topLeftY"    # I
    .param p5, "bottomRightX"    # I
    .param p6, "bottomRightY"    # I

    .line 99
    iput p1, p0, Lmiui/util/SuppressionRect;->type:I

    .line 100
    iput p2, p0, Lmiui/util/SuppressionRect;->position:I

    .line 101
    iput p3, p0, Lmiui/util/SuppressionRect;->topLeftX:I

    .line 102
    iput p4, p0, Lmiui/util/SuppressionRect;->topLeftY:I

    .line 103
    iput p5, p0, Lmiui/util/SuppressionRect;->bottomRightX:I

    .line 104
    iput p6, p0, Lmiui/util/SuppressionRect;->bottomRightY:I

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SuppressionRect;->time:I

    .line 106
    iput v0, p0, Lmiui/util/SuppressionRect;->node:I

    .line 107
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuppressionRect{list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/util/SuppressionRect;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/util/SuppressionRect;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topLeftX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/util/SuppressionRect;->topLeftX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topLeftY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/util/SuppressionRect;->topLeftY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottomRightX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/util/SuppressionRect;->bottomRightX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottomRightY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/util/SuppressionRect;->bottomRightY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/util/SuppressionRect;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/util/SuppressionRect;->node:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
