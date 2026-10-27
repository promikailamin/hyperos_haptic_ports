.class public Lcom/miui/misight/MiSight;
.super Ljava/lang/Object;
.source "MiSight.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 7
    const-string v0, "misight_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEvent;
    .registers 6
    .param p0, "eventId"    # I
    .param p1, "keyVals"    # [Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " constructEvent id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiSight:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Lcom/miui/misight/MiEvent;

    invoke-direct {v0, p0}, Lcom/miui/misight/MiEvent;-><init>(I)V

    .line 20
    .local v0, "event":Lcom/miui/misight/MiEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    array-length v2, p1

    if-ge v1, v2, :cond_2f

    .line 21
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-static {v0, v2, v3}, Lcom/miui/misight/MiSight;->constructEventParam(Lcom/miui/misight/MiEvent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    add-int/lit8 v1, v1, 0x2

    goto :goto_1e

    .line 23
    .end local v1    # "i":I
    :cond_2f
    return-object v0
.end method

.method private static blacklist constructEventParam(Lcom/miui/misight/MiEvent;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "event"    # Lcom/miui/misight/MiEvent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 27
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_10

    .line 28
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addShort(Ljava/lang/String;S)Lcom/miui/misight/MiEvent;

    goto/16 :goto_b1

    .line 29
    :cond_10
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 30
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addInt(Ljava/lang/String;I)Lcom/miui/misight/MiEvent;

    goto/16 :goto_b1

    .line 31
    :cond_20
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_30

    .line 32
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/misight/MiEvent;->addLong(Ljava/lang/String;J)Lcom/miui/misight/MiEvent;

    goto/16 :goto_b1

    .line 33
    :cond_30
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_40

    .line 34
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addFloat(Ljava/lang/String;F)Lcom/miui/misight/MiEvent;

    goto/16 :goto_b1

    .line 35
    :cond_40
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4f

    .line 36
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addBool(Ljava/lang/String;Z)Lcom/miui/misight/MiEvent;

    goto :goto_b1

    .line 37
    :cond_4f
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 38
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addStr(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/misight/MiEvent;

    goto :goto_b1

    .line 39
    :cond_5a
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 40
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addStrArray(Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/misight/MiEvent;

    goto :goto_b1

    .line 41
    :cond_65
    instance-of v0, p2, [I

    if-eqz v0, :cond_70

    .line 42
    move-object v0, p2

    check-cast v0, [I

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addIntArray(Ljava/lang/String;[I)Lcom/miui/misight/MiEvent;

    goto :goto_b1

    .line 43
    :cond_70
    instance-of v0, p2, [S

    if-eqz v0, :cond_7b

    .line 44
    move-object v0, p2

    check-cast v0, [S

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addShortArray(Ljava/lang/String;[S)Lcom/miui/misight/MiEvent;

    goto :goto_b1

    .line 45
    :cond_7b
    instance-of v0, p2, [J

    if-eqz v0, :cond_86

    .line 46
    move-object v0, p2

    check-cast v0, [J

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addLongArray(Ljava/lang/String;[J)Lcom/miui/misight/MiEvent;

    goto :goto_b1

    .line 47
    :cond_86
    instance-of v0, p2, [F

    if-eqz v0, :cond_91

    .line 48
    move-object v0, p2

    check-cast v0, [F

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addFloatArray(Ljava/lang/String;[F)Lcom/miui/misight/MiEvent;

    goto :goto_b1

    .line 49
    :cond_91
    instance-of v0, p2, [Z

    if-eqz v0, :cond_9c

    .line 50
    move-object v0, p2

    check-cast v0, [Z

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addBoolArray(Ljava/lang/String;[Z)Lcom/miui/misight/MiEvent;

    goto :goto_b1

    .line 51
    :cond_9c
    instance-of v0, p2, Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_a7

    .line 52
    move-object v0, p2

    check-cast v0, Lcom/miui/misight/MiEvent;

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addMiEvent(Ljava/lang/String;Lcom/miui/misight/MiEvent;)Lcom/miui/misight/MiEvent;

    goto :goto_b1

    .line 53
    :cond_a7
    instance-of v0, p2, [Lcom/miui/misight/MiEvent;

    if-eqz v0, :cond_b1

    .line 54
    move-object v0, p2

    check-cast v0, [Lcom/miui/misight/MiEvent;

    invoke-virtual {p0, p1, v0}, Lcom/miui/misight/MiEvent;->addMiEventArray(Ljava/lang/String;[Lcom/miui/misight/MiEvent;)Lcom/miui/misight/MiEvent;

    .line 56
    :cond_b1
    :goto_b1
    return-void
.end method

.method private static native blacklist nativeSendEvent(ILjava/lang/String;)Z
.end method

.method public static blacklist sendEvent(Lcom/miui/misight/MiEvent;)V
    .registers 3
    .param p0, "event"    # Lcom/miui/misight/MiEvent;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sendEvent id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/misight/MiEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiSight:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Lcom/miui/misight/MiEvent;->getEventId()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/misight/MiEvent;->getMiEventStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/misight/MiSight;->nativeSendEvent(ILjava/lang/String;)Z

    .line 15
    return-void
.end method
