.class Lcom/android/server/pm/CompilerStats$PackageStats;
.super Ljava/lang/Object;
.source "CompilerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CompilerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageStats"
.end annotation


# instance fields
.field private final compileTimePerCodePath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private dexoptEnded:Z

.field private dexoptStarted:Z

.field private final packageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcompileTimePerCodePath(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->dexoptStarted:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->dexoptEnded:Z

    .line 89
    iput-object p1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->packageName:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    .line 92
    return-void
.end method

.method private static getStoredPathFromCodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "codePath"    # Ljava/lang/String;

    .line 125
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 126
    .local v0, "lastSlash":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 130
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 132
    const-string v1, "(No recorded stats)"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 134
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 135
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_1b

    .line 138
    :cond_52
    :goto_52
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public getCompileTime(Ljava/lang/String;)J
    .registers 7
    .param p1, "codePath"    # Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/android/server/pm/CompilerStats$PackageStats;->getStoredPathFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "storagePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    monitor-enter v1

    .line 105
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 106
    .local v2, "l":Ljava/lang/Long;
    if-nez v2, :cond_15

    .line 107
    const-wide/16 v3, 0x0

    monitor-exit v1

    return-wide v3

    .line 109
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    monitor-exit v1

    return-wide v3

    .line 110
    .end local v2    # "l":Ljava/lang/Long;
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public isDexoptEnded()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->dexoptEnded:Z

    return v0
.end method

.method public isDexoptStarted()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->dexoptStarted:Z

    return v0
.end method

.method public setCompileTime(Ljava/lang/String;J)V
    .registers 8
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "compileTimeInMs"    # J

    .line 114
    invoke-static {p1}, Lcom/android/server/pm/CompilerStats$PackageStats;->getStoredPathFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "storagePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    monitor-enter v1

    .line 116
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_13

    .line 117
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 119
    :cond_13
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_1c
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public setDexoptEnded(Z)V
    .registers 2
    .param p1, "dexoptEnded"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->dexoptEnded:Z

    .line 76
    return-void
.end method

.method public setDexoptStarted(Z)V
    .registers 2
    .param p1, "dexoptStarted"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->dexoptStarted:Z

    .line 68
    return-void
.end method
