.class public Lcom/miui/misight/MiEvent;
.super Ljava/lang/Object;
.source "MiEvent.java"


# instance fields
.field private blacklist mEventId:I

.field private blacklist mMiEvent:Lorg/json/JSONObject;

.field private blacklist mTimestamp:J

.field private blacklist mTraceId:J


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "eventId"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    .line 23
    iput p1, p0, Lcom/miui/misight/MiEvent;->mEventId:I

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/misight/MiEvent;->mTimestamp:J

    .line 25
    return-void
.end method

.method private blacklist printStackTrace(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " add param Error."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiSight:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    return-void
.end method


# virtual methods
.method public blacklist addBool(Ljava/lang/String;Z)Lcom/miui/misight/MiEvent;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 64
    goto :goto_a

    .line 62
    :catch_6
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 65
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-object p0
.end method

.method public blacklist addBoolArray(Ljava/lang/String;[Z)Lcom/miui/misight/MiEvent;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [Z

    .line 134
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 135
    .local v0, "jArrays":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 136
    aget-boolean v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 138
    .end local v1    # "i":I
    :cond_11
    iget-object v1, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_18

    .line 141
    nop

    .end local v0    # "jArrays":Lorg/json/JSONArray;
    goto :goto_1c

    .line 139
    :catch_18
    move-exception v0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 142
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1c
    return-object p0
.end method

.method public blacklist addFloat(Ljava/lang/String;F)Lcom/miui/misight/MiEvent;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # F

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    .line 56
    goto :goto_b

    .line 54
    :catch_7
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 57
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_b
    return-object p0
.end method

.method public blacklist addFloatArray(Ljava/lang/String;[F)Lcom/miui/misight/MiEvent;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [F

    .line 122
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 123
    .local v0, "jArrays":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_12

    .line 124
    aget v2, p2, v1

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 126
    .end local v1    # "i":I
    :cond_12
    iget-object v1, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_19

    .line 129
    nop

    .end local v0    # "jArrays":Lorg/json/JSONArray;
    goto :goto_1d

    .line 127
    :catch_19
    move-exception v0

    .line 128
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 130
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1d
    return-object p0
.end method

.method public blacklist addInt(Ljava/lang/String;I)Lcom/miui/misight/MiEvent;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 32
    goto :goto_a

    .line 30
    :catch_6
    move-exception v0

    .line 31
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 33
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-object p0
.end method

.method public blacklist addIntArray(Ljava/lang/String;[I)Lcom/miui/misight/MiEvent;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [I

    .line 86
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 87
    .local v0, "jArrays":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 88
    aget v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 90
    .end local v1    # "i":I
    :cond_11
    iget-object v1, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_18

    .line 93
    nop

    .end local v0    # "jArrays":Lorg/json/JSONArray;
    goto :goto_1c

    .line 91
    :catch_18
    move-exception v0

    .line 92
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 94
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1c
    return-object p0
.end method

.method public blacklist addLong(Ljava/lang/String;J)Lcom/miui/misight/MiEvent;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 48
    goto :goto_a

    .line 46
    :catch_6
    move-exception v0

    .line 47
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 49
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-object p0
.end method

.method public blacklist addLongArray(Ljava/lang/String;[J)Lcom/miui/misight/MiEvent;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [J

    .line 110
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 111
    .local v0, "jArrays":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 112
    aget-wide v2, p2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 114
    .end local v1    # "i":I
    :cond_11
    iget-object v1, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_18

    .line 117
    nop

    .end local v0    # "jArrays":Lorg/json/JSONArray;
    goto :goto_1c

    .line 115
    :catch_18
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 118
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1c
    return-object p0
.end method

.method public blacklist addMiEvent(Ljava/lang/String;Lcom/miui/misight/MiEvent;)Lcom/miui/misight/MiEvent;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Lcom/miui/misight/MiEvent;

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    .line 80
    goto :goto_c

    .line 78
    :catch_8
    move-exception v0

    .line 79
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 81
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_c
    return-object p0
.end method

.method public blacklist addMiEventArray(Ljava/lang/String;[Lcom/miui/misight/MiEvent;)Lcom/miui/misight/MiEvent;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [Lcom/miui/misight/MiEvent;

    .line 159
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 160
    .local v0, "jArrays":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_13

    .line 161
    aget-object v2, p2, v1

    iget-object v2, v2, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 163
    .end local v1    # "i":I
    :cond_13
    iget-object v1, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_1a

    .line 166
    nop

    .end local v0    # "jArrays":Lorg/json/JSONArray;
    goto :goto_1e

    .line 164
    :catch_1a
    move-exception v0

    .line 165
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 167
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1e
    return-object p0
.end method

.method public blacklist addShort(Ljava/lang/String;S)Lcom/miui/misight/MiEvent;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # S

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 40
    goto :goto_a

    .line 38
    :catch_6
    move-exception v0

    .line 39
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 41
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-object p0
.end method

.method public blacklist addShortArray(Ljava/lang/String;[S)Lcom/miui/misight/MiEvent;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [S

    .line 98
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 99
    .local v0, "jArrays":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 100
    aget-short v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 102
    .end local v1    # "i":I
    :cond_11
    iget-object v1, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_18

    .line 105
    nop

    .end local v0    # "jArrays":Lorg/json/JSONArray;
    goto :goto_1c

    .line 103
    :catch_18
    move-exception v0

    .line 104
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 106
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1c
    return-object p0
.end method

.method public blacklist addStr(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/misight/MiEvent;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 72
    goto :goto_a

    .line 70
    :catch_6
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 73
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-object p0
.end method

.method public blacklist addStrArray(Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/misight/MiEvent;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [Ljava/lang/String;

    .line 146
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 147
    .local v0, "jArrays":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 148
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 150
    .end local v1    # "i":I
    :cond_11
    iget-object v1, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_18

    .line 153
    nop

    .end local v0    # "jArrays":Lorg/json/JSONArray;
    goto :goto_1c

    .line 151
    :catch_18
    move-exception v0

    .line 152
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/miui/misight/MiEvent;->printStackTrace(Ljava/lang/Exception;)V

    .line 154
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1c
    return-object p0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/misight/MiEvent;->mEventId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string v0, "paras: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/miui/misight/MiEvent;->getMiEventStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public blacklist getEventId()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/miui/misight/MiEvent;->mEventId:I

    return v0
.end method

.method public blacklist getMiEventStr()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/miui/misight/MiEvent;->mMiEvent:Lorg/json/JSONObject;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method
