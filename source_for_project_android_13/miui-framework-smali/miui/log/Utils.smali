.class final Lmiui/log/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiLogUtils"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createConfigFolder(Ljava/io/File;)V
    .registers 7
    .param p0, "configFolder"    # Ljava/io/File;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "absentFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    move-object v1, p0

    .line 43
    .local v1, "folder":Ljava/io/File;
    :goto_6
    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_17

    .line 44
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    goto :goto_6

    .line 47
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 48
    .local v4, "absentFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 49
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 50
    invoke-virtual {v4, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 51
    invoke-virtual {v4, v5, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 52
    .end local v4    # "absentFolder":Ljava/io/File;
    goto :goto_1b

    .line 53
    :cond_35
    return-void
.end method

.method static blacklist createLogSwitchesFileIfNotExisted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "logSwitchesFolder"    # Ljava/lang/String;
    .param p1, "logSwitchesFilePath"    # Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .local v0, "configFolder":Ljava/io/File;
    const/4 v1, 0x0

    .line 18
    .local v1, "newCreated":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 19
    const/4 v1, 0x1

    goto :goto_18

    .line 20
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 22
    const/4 v1, 0x1

    .line 24
    :cond_18
    :goto_18
    if-eqz v1, :cond_1d

    .line 25
    invoke-static {v0}, Lmiui/log/Utils;->createConfigFolder(Ljava/io/File;)V

    .line 27
    :cond_1d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v2, "configFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_50

    .line 30
    :try_start_28
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 31
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 32
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 33
    invoke-virtual {v2, v4}, Ljava/io/File;->setExecutable(Z)Z
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_36} :catch_37

    .line 36
    goto :goto_50

    .line 34
    :catch_37
    move-exception v3

    .line 35
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to create file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiLogUtils"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_50
    :goto_50
    return-void
.end method
