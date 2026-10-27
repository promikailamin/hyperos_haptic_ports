.class public final Lmiui/log/LogSwitchesConfigParser;
.super Ljava/lang/Object;
.source "LogSwitchesConfigParser.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LogSwitchesConfigParser"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseLogSwitchesConfig(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .param p0, "configFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    .line 31
    const-string v0, ""

    const-string v1, "LogSwitchesConfigParser"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "configFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 36
    :cond_15
    const/4 v3, 0x0

    .line 38
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v4, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 41
    :goto_26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_64

    .line 43
    nop

    .line 48
    .end local v5    # "line":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 50
    .local v6, "line":Ljava/lang/String;
    invoke-static {v6}, Lmiui/log/AppLogSwitches;->parseAppLogSwitches(Ljava/lang/String;)Lmiui/log/AppLogSwitches;

    move-result-object v7

    .line 51
    .local v7, "appConfig":Lmiui/log/AppLogSwitches;
    if-eqz v7, :cond_5b

    .line 52
    iget-object v8, v7, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/log/AppLogSwitches;

    .line 53
    .local v8, "existing":Lmiui/log/AppLogSwitches;
    if-eqz v8, :cond_56

    .line 54
    invoke-virtual {v8, v7}, Lmiui/log/AppLogSwitches;->merge(Lmiui/log/AppLogSwitches;)V

    goto :goto_5b

    .line 56
    :cond_56
    iget-object v9, v7, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_5b} :catch_9c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_5b} :catch_78
    .catchall {:try_start_16 .. :try_end_5b} :catchall_76

    .line 59
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "appConfig":Lmiui/log/AppLogSwitches;
    .end local v8    # "existing":Lmiui/log/AppLogSwitches;
    :cond_5b
    :goto_5b
    goto :goto_36

    .line 60
    :cond_5c
    nop

    .line 68
    nop

    .line 70
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 72
    goto :goto_63

    .line 71
    :catch_62
    move-exception v1

    .line 60
    :goto_63
    return-object v0

    .line 45
    .end local v0    # "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .restart local v5    # "line":Ljava/lang/String;
    :cond_64
    :try_start_64
    const-string v6, "\r"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 46
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_74} :catch_9c
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_74} :catch_78
    .catchall {:try_start_64 .. :try_end_74} :catchall_76

    .line 47
    nop

    .end local v5    # "line":Ljava/lang/String;
    goto :goto_26

    .line 68
    .end local v4    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_76
    move-exception v0

    goto :goto_c0

    .line 64
    :catch_78
    move-exception v0

    .line 65
    .local v0, "ex":Ljava/io/IOException;
    :try_start_79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_94
    .catchall {:try_start_79 .. :try_end_94} :catchall_76

    .line 68
    if-eqz v3, :cond_9b

    .line 70
    :try_start_96
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 72
    goto :goto_9b

    .line 71
    :catch_9a
    move-exception v4

    .line 66
    :cond_9b
    :goto_9b
    return-object v1

    .line 61
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_9c
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :try_start_9d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_b8
    .catchall {:try_start_9d .. :try_end_b8} :catchall_76

    .line 68
    if-eqz v3, :cond_bf

    .line 70
    :try_start_ba
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_be

    .line 72
    goto :goto_bf

    .line 71
    :catch_be
    move-exception v4

    .line 63
    :cond_bf
    :goto_bf
    return-object v1

    .line 68
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :goto_c0
    if-eqz v3, :cond_c7

    .line 70
    :try_start_c2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    .line 72
    goto :goto_c7

    .line 71
    :catch_c6
    move-exception v1

    .line 74
    :cond_c7
    :goto_c7
    throw v0
.end method
