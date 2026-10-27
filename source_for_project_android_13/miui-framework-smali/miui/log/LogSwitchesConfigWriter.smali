.class public final Lmiui/log/LogSwitchesConfigWriter;
.super Ljava/lang/Object;
.source "LogSwitchesConfigWriter.java"


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "LogSwitchesConfigWriter"


# instance fields
.field private final blacklist logSwitchesFileName:Ljava/lang/String;

.field private final blacklist logSwitchesFilePath:Ljava/lang/String;

.field private final blacklist logSwitchesFolder:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "logSwitchesFolder"    # Ljava/lang/String;
    .param p2, "logSwitchesFileName"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFolder:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFileName:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist write(Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;)V"
        }
    .end annotation

    .local p1, "newLogSwitchesConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    monitor-enter p0

    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_2
    iget-object v1, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFolder:Ljava/lang/String;

    iget-object v2, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lmiui/log/Utils;->createLogSwitchesFileIfNotExisted(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 35
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_22} :catch_43
    .catchall {:try_start_2 .. :try_end_22} :catchall_41

    if-eqz v2, :cond_37

    :try_start_24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/AppLogSwitches;

    .line 36
    .local v2, "appLogSwitches":Lmiui/log/AppLogSwitches;
    invoke-virtual {v2}, Lmiui/log/AppLogSwitches;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_35
    .catchall {:try_start_24 .. :try_end_34} :catchall_66

    .line 38
    .end local v2    # "appLogSwitches":Lmiui/log/AppLogSwitches;
    goto :goto_1e

    .line 40
    :catch_35
    move-exception v1

    goto :goto_44

    .line 39
    :cond_37
    :try_start_37
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_43
    .catchall {:try_start_37 .. :try_end_3a} :catchall_41

    .line 43
    nop

    .line 45
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_6f

    .line 47
    goto :goto_64

    .line 46
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigWriter;
    :catch_3f
    move-exception v1

    .line 47
    goto :goto_64

    .line 43
    :catchall_41
    move-exception v1

    goto :goto_67

    .line 40
    :catch_43
    move-exception v1

    .line 41
    .local v1, "ex":Ljava/io/IOException;
    :goto_44
    :try_start_44
    const-string v2, "LogSwitchesConfigWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_44 .. :try_end_5e} :catchall_66

    .line 43
    nop

    .end local v1    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_64

    .line 45
    :try_start_61
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_3f
    .catchall {:try_start_61 .. :try_end_64} :catchall_6f

    .line 50
    :cond_64
    :goto_64
    monitor-exit p0

    return-void

    .line 43
    .restart local p0    # "this":Lmiui/log/LogSwitchesConfigWriter;
    :catchall_66
    move-exception v1

    :goto_67
    if-eqz v0, :cond_6e

    .line 45
    :try_start_69
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6f

    .line 47
    goto :goto_6e

    .line 46
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigWriter;
    :catch_6d
    move-exception v2

    .line 49
    :cond_6e
    :goto_6e
    :try_start_6e
    throw v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    .line 30
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    .end local p1    # "newLogSwitchesConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
