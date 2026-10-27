.class public Lcom/miui/misight/MiEventStub;
.super Ljava/lang/Object;
.source "MiEventStub.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist newInstance()Lcom/miui/misight/MiEventStub;
    .registers 1

    .line 9
    const-class v0, Lcom/miui/misight/MiEventStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/misight/MiEventStub;

    return-object v0
.end method


# virtual methods
.method public blacklist addBool(Ljava/lang/String;Z)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 38
    return-object p0
.end method

.method public blacklist addBoolArray(Ljava/lang/String;[Z)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [Z

    .line 66
    return-object p0
.end method

.method public blacklist addFloat(Ljava/lang/String;F)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # F

    .line 34
    return-object p0
.end method

.method public blacklist addFloatArray(Ljava/lang/String;[F)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [F

    .line 62
    return-object p0
.end method

.method public blacklist addInt(Ljava/lang/String;I)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 22
    return-object p0
.end method

.method public blacklist addIntArray(Ljava/lang/String;[I)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [I

    .line 50
    return-object p0
.end method

.method public blacklist addLong(Ljava/lang/String;J)Lcom/miui/misight/MiEventStub;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 30
    return-object p0
.end method

.method public blacklist addLongArray(Ljava/lang/String;[J)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [J

    .line 58
    return-object p0
.end method

.method public blacklist addMiEvent(Ljava/lang/String;Lcom/miui/misight/MiEventStub;)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Lcom/miui/misight/MiEventStub;

    .line 46
    return-object p0
.end method

.method public blacklist addMiEventArray(Ljava/lang/String;[Lcom/miui/misight/MiEventStub;)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [Lcom/miui/misight/MiEventStub;

    .line 74
    return-object p0
.end method

.method public blacklist addShort(Ljava/lang/String;S)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # S

    .line 26
    return-object p0
.end method

.method public blacklist addShortArray(Ljava/lang/String;[S)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [S

    .line 54
    return-object p0
.end method

.method public blacklist addStr(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public blacklist addStrArray(Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/misight/MiEventStub;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 83
    return-void
.end method

.method public blacklist getEventId()I
    .registers 2

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMiEventStr()Ljava/lang/String;
    .registers 2

    .line 79
    const-string v0, ""

    return-object v0
.end method

.method public blacklist init(I)Lcom/miui/misight/MiEventStub;
    .registers 2
    .param p1, "eventId"    # I

    .line 18
    return-object p0
.end method
