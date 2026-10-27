.class public Landroid/os/spc/PSIEvent;
.super Ljava/lang/Object;
.source "PSIEvent.java"


# instance fields
.field public blacklist growthNs:J

.field public blacklist id:I

.field public blacklist timeNs:J

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>(IJJ)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "timeNs"    # J
    .param p4, "growthNs"    # J

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Landroid/os/spc/PSIEvent;->id:I

    .line 18
    iput-wide p2, p0, Landroid/os/spc/PSIEvent;->timeNs:J

    .line 19
    iput-wide p4, p0, Landroid/os/spc/PSIEvent;->growthNs:J

    .line 20
    invoke-static {p1}, Landroid/os/spc/PSIMonitorSetting;->getEventType(I)I

    move-result v0

    iput v0, p0, Landroid/os/spc/PSIEvent;->type:I

    .line 21
    return-void
.end method

.method public static blacklist parse(Ljava/lang/String;)Landroid/os/spc/PSIEvent;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 25
    const-string v0, "\\|"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "items":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_45

    .line 28
    :try_start_11
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 29
    .local v3, "id":I
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 30
    .local v4, "timeNs":J
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 31
    .local v6, "growthNs":J
    new-instance v1, Landroid/os/spc/PSIEvent;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/os/spc/PSIEvent;-><init>(IJJ)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_2b} :catch_2c

    return-object v1

    .line 32
    .end local v3    # "id":I
    .end local v4    # "timeNs":J
    .end local v6    # "growthNs":J
    :catch_2c
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSIEvent parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemPressureControl"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .end local v0    # "items":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_45
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist toBriefString()Ljava/lang/String;
    .registers 6

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/os/spc/PSIEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/os/spc/PSIEvent;->growthNs:J

    .line 51
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/spc/PSIEvent;->timeNs:J

    .line 52
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/os/spc/PSIEvent;->id:I

    invoke-static {v1}, Landroid/os/spc/PSIMonitorSetting;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/os/spc/PSIEvent;->growthNs:J

    .line 43
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/spc/PSIEvent;->timeNs:J

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
