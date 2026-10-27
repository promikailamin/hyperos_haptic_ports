.class public Landroid/os/spc/MemoryCleanInfo;
.super Ljava/lang/Object;
.source "MemoryCleanInfo.java"


# instance fields
.field public blacklist afterMemAvail:J

.field public blacklist afterMemFree:J

.field public blacklist beforeMemAvail:J

.field public blacklist beforeMemFree:J

.field public blacklist killedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist memTotal:J

.field public blacklist neededMemory:J

.field public blacklist swapTotal:J

.field public blacklist targetListData:Ljava/lang/String;

.field public blacklist time:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/spc/MemoryCleanInfo;->killedApps:Ljava/util/ArrayList;

    return-void
.end method

.method public static blacklist fromBundle(Landroid/os/Bundle;)Landroid/os/spc/MemoryCleanInfo;
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 52
    new-instance v0, Landroid/os/spc/MemoryCleanInfo;

    invoke-direct {v0}, Landroid/os/spc/MemoryCleanInfo;-><init>()V

    .line 53
    .local v0, "info":Landroid/os/spc/MemoryCleanInfo;
    const-string v1, "time"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->time:J

    .line 54
    const-string v1, "beforeMemFree"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->beforeMemFree:J

    .line 55
    const-string v1, "beforeMemAvail"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->beforeMemAvail:J

    .line 56
    const-string v1, "afterMemFree"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->afterMemFree:J

    .line 57
    const-string v1, "afterMemAvail"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->afterMemAvail:J

    .line 58
    const-string v1, "neededMemory"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->neededMemory:J

    .line 59
    const-string v1, "memTotal"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->memTotal:J

    .line 60
    const-string v1, "swapTotal"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/spc/MemoryCleanInfo;->swapTotal:J

    .line 61
    const-string v1, "killedApps"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 62
    .local v1, "killedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_52

    .line 63
    iget-object v2, v0, Landroid/os/spc/MemoryCleanInfo;->killedApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_52
    const-string v2, "appsInTarget"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/spc/MemoryCleanInfo;->targetListData:Ljava/lang/String;

    .line 66
    return-object v0
.end method


# virtual methods
.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 5

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->time:J

    const-string v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemFree:J

    const-string v3, "beforeMemFree"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemAvail:J

    const-string v3, "beforeMemAvail"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemFree:J

    const-string v3, "afterMemFree"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemAvail:J

    const-string v3, "afterMemAvail"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->neededMemory:J

    const-string v3, "neededMemory"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 44
    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->memTotal:J

    const-string v3, "memTotal"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 45
    iget-wide v1, p0, Landroid/os/spc/MemoryCleanInfo;->swapTotal:J

    const-string v3, "swapTotal"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 46
    iget-object v1, p0, Landroid/os/spc/MemoryCleanInfo;->killedApps:Ljava/util/ArrayList;

    const-string v2, "killedApps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    iget-object v1, p0, Landroid/os/spc/MemoryCleanInfo;->targetListData:Ljava/lang/String;

    const-string v2, "appsInTarget"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method public blacklist toJson()Lorg/json/JSONObject;
    .registers 5

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "time"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->time:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 73
    const-string v1, "beforeMemFree"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemFree:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 74
    const-string v1, "beforeMemAvail"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemAvail:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    const-string v1, "afterMemFree"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemFree:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    const-string v1, "afterMemAvail"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemAvail:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 77
    const-string v1, "neededMemory"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->neededMemory:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 78
    const-string v1, "memTotal"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->memTotal:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 79
    const-string v1, "swapTotal"

    iget-wide v2, p0, Landroid/os/spc/MemoryCleanInfo;->swapTotal:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 80
    const-string v1, "killedApps"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Landroid/os/spc/MemoryCleanInfo;->killedApps:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "appsInTarget"

    iget-object v2, p0, Landroid/os/spc/MemoryCleanInfo;->targetListData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_50} :catch_52

    .line 84
    nop

    .line 85
    return-object v0

    .line 82
    :catch_52
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/os/spc/MemoryCleanInfo;->killedApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    .local v2, "app":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .end local v2    # "app":Ljava/lang/String;
    goto :goto_b

    .line 32
    :cond_21
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->time:J

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemFree:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->beforeMemAvail:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemFree:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->afterMemAvail:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->neededMemory:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->memTotal:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-wide v3, p0, Landroid/os/spc/MemoryCleanInfo;->swapTotal:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 32
    const-string v2, "time=%s, beforeMemFree=%s, beforeMemAvail=%s, afterMemFree=%s, afterMemAvail=%s, neededMemory=%s, memTotal=%s, swapTotal=%s, killedApps=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
