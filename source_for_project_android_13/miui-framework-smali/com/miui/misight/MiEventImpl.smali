.class public Lcom/miui/misight/MiEventImpl;
.super Lcom/miui/misight/MiEventStub;
.source "MiEventImpl.java"


# instance fields
.field public blacklist miEvent:Lcom/miui/misight/MiEvent;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/miui/misight/MiEventStub;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    return-void
.end method


# virtual methods
.method public blacklist addBool(Ljava/lang/String;Z)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 56
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/miui/misight/MiEvent;->addBool(Ljava/lang/String;Z)Lcom/miui/misight/MiEvent;

    .line 59
    :cond_7
    return-object p0
.end method

.method public blacklist addBoolArray(Ljava/lang/String;[Z)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [Z

    .line 113
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 114
    invoke-virtual {v0, p1, p2}, Lcom/miui/misight/MiEvent;->addBoolArray(Ljava/lang/String;[Z)Lcom/miui/misight/MiEvent;

    .line 116
    :cond_7
    return-object p0
.end method

.method public blacklist addFloat(Ljava/lang/String;F)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # F

    .line 48
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/miui/misight/MiEvent;->addFloat(Ljava/lang/String;F)Lcom/miui/misight/MiEvent;

    .line 51
    :cond_7
    return-object p0
.end method

.method public blacklist addFloatArray(Ljava/lang/String;[F)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [F

    .line 105
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 106
    invoke-virtual {v0, p1, p2}, Lcom/miui/misight/MiEvent;->addFloatArray(Ljava/lang/String;[F)Lcom/miui/misight/MiEvent;

    .line 108
    :cond_7
    return-object p0
.end method

.method public blacklist addInt(Ljava/lang/String;I)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 24
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/miui/misight/MiEvent;->addInt(Ljava/lang/String;I)Lcom/miui/misight/MiEvent;

    .line 27
    :cond_7
    return-object p0
.end method

.method public blacklist addIntArray(Ljava/lang/String;[I)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [I

    .line 81
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {v0, p1, p2}, Lcom/miui/misight/MiEvent;->addIntArray(Ljava/lang/String;[I)Lcom/miui/misight/MiEvent;

    .line 84
    :cond_7
    return-object p0
.end method

.method public blacklist addLong(Ljava/lang/String;J)Lcom/miui/misight/MiEventStub;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 40
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 41
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/misight/MiEvent;->addLong(Ljava/lang/String;J)Lcom/miui/misight/MiEvent;

    .line 43
    :cond_7
    return-object p0
.end method

.method public blacklist addLongArray(Ljava/lang/String;[J)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [J

    .line 97
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 98
    invoke-virtual {v0, p1, p2}, Lcom/miui/misight/MiEvent;->addLongArray(Ljava/lang/String;[J)Lcom/miui/misight/MiEvent;

    .line 100
    :cond_7
    return-object p0
.end method

.method public blacklist addMiEvent(Ljava/lang/String;Lcom/miui/misight/MiEventStub;)Lcom/miui/misight/MiEventStub;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Lcom/miui/misight/MiEventStub;

    .line 72
    if-eqz p2, :cond_c

    .line 73
    move-object v0, p2

    check-cast v0, Lcom/miui/misight/MiEventImpl;

    .line 74
    .local v0, "miEventImpl":Lcom/miui/misight/MiEventImpl;
    iget-object v1, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    iget-object v2, v0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    invoke-virtual {v1, p1, v2}, Lcom/miui/misight/MiEvent;->addMiEvent(Ljava/lang/String;Lcom/miui/misight/MiEvent;)Lcom/miui/misight/MiEvent;

    .line 76
    .end local v0    # "miEventImpl":Lcom/miui/misight/MiEventImpl;
    :cond_c
    return-object p0
.end method

.method public blacklist addMiEventArray(Ljava/lang/String;[Lcom/miui/misight/MiEventStub;)Lcom/miui/misight/MiEventStub;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [Lcom/miui/misight/MiEventStub;

    .line 129
    array-length v0, p2

    new-array v0, v0, [Lcom/miui/misight/MiEvent;

    .line 130
    .local v0, "miEvents":[Lcom/miui/misight/MiEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_14

    .line 131
    aget-object v2, p2, v1

    check-cast v2, Lcom/miui/misight/MiEventImpl;

    .line 132
    .local v2, "miEventImpl":Lcom/miui/misight/MiEventImpl;
    if-eqz v2, :cond_11

    .line 133
    iget-object v3, v2, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    aput-object v3, v0, v1

    .line 130
    .end local v2    # "miEventImpl":Lcom/miui/misight/MiEventImpl;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 136
    .end local v1    # "i":I
    :cond_14
    iget-object v1, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    invoke-virtual {v1, p1, v0}, Lcom/miui/misight/MiEvent;->addMiEventArray(Ljava/lang/String;[Lcom/miui/misight/MiEvent;)Lcom/miui/misight/MiEvent;

    .line 137
    return-object p0
.end method

.method public blacklist addShort(Ljava/lang/String;S)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # S

    .line 32
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/miui/misight/MiEvent;->addShort(Ljava/lang/String;S)Lcom/miui/misight/MiEvent;

    .line 35
    :cond_7
    return-object p0
.end method

.method public blacklist addShortArray(Ljava/lang/String;[S)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [S

    .line 89
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/miui/misight/MiEvent;->addShortArray(Ljava/lang/String;[S)Lcom/miui/misight/MiEvent;

    .line 92
    :cond_7
    return-object p0
.end method

.method public blacklist addStr(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/miui/misight/MiEvent;->addStr(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/misight/MiEvent;

    .line 67
    :cond_7
    return-object p0
.end method

.method public blacklist addStrArray(Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_7

    .line 122
    invoke-virtual {v0, p1, p2}, Lcom/miui/misight/MiEvent;->addStrArray(Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/misight/MiEvent;

    .line 124
    :cond_7
    return-object p0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 150
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    invoke-virtual {v0, p1}, Lcom/miui/misight/MiEvent;->dump(Ljava/io/PrintWriter;)V

    .line 151
    return-void
.end method

.method public blacklist getEventId()I
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_9

    .line 11
    invoke-virtual {v0}, Lcom/miui/misight/MiEvent;->getEventId()I

    move-result v0

    return v0

    .line 13
    :cond_9
    invoke-super {p0}, Lcom/miui/misight/MiEventStub;->getEventId()I

    move-result v0

    return v0
.end method

.method public blacklist getMiEventStr()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_9

    .line 143
    invoke-virtual {v0}, Lcom/miui/misight/MiEvent;->getMiEventStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_9
    invoke-super {p0}, Lcom/miui/misight/MiEventStub;->getMiEventStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(I)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "eventId"    # I

    .line 18
    new-instance v0, Lcom/miui/misight/MiEvent;

    invoke-direct {v0, p1}, Lcom/miui/misight/MiEvent;-><init>(I)V

    iput-object v0, p0, Lcom/miui/misight/MiEventImpl;->miEvent:Lcom/miui/misight/MiEvent;

    .line 19
    return-object p0
.end method
