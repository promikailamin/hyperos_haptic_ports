.class public Lmiui/theme/ThemePermissionUtils;
.super Ljava/lang/Object;
.source "ThemePermissionUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ThemePermissionUtils"

.field private static final blacklist THEME_FILE_CONTEXT:Ljava/lang/String; = "u:object_r:theme_data_file:s0"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist updateFilePermissionWithThemeContext(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiui/theme/ThemePermissionUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "systemReady"    # Z

    .line 21
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 22
    return v0

    .line 25
    :cond_4
    const/4 v1, 0x0

    .line 26
    .local v1, "themeRoot":Ljava/io/File;
    const/4 v2, -0x1

    .line 27
    .local v2, "mode":I
    const-string v3, "/data/system/theme/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 28
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 29
    const/16 v2, 0x1fd

    goto :goto_27

    .line 30
    :cond_17
    const-string v3, "/data/system/theme_magic/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 31
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 32
    const/16 v2, 0x1fd

    .line 34
    :cond_27
    :goto_27
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v3, "destFile":Ljava/io/File;
    if-eqz v1, :cond_78

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    goto :goto_78

    .line 39
    :cond_43
    const/4 v4, 0x0

    .line 41
    .local v4, "ret":Z
    const/16 v5, 0x17d5

    :try_start_46
    invoke-static {p0, v2, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_4f

    move v5, v6

    goto :goto_50

    :cond_4f
    move v5, v0

    :goto_50
    move v4, v5

    .line 42
    const-string v5, "u:object_r:theme_data_file:s0"

    invoke-static {p0, v5}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_57} :catch_5d

    if-eqz v5, :cond_5c

    if-eqz v4, :cond_5c

    move v0, v6

    .line 45
    .end local v4    # "ret":Z
    .local v0, "ret":Z
    :cond_5c
    goto :goto_77

    .line 43
    .end local v0    # "ret":Z
    .restart local v4    # "ret":Z
    :catch_5d
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "occur exception when updating theme file context: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ThemePermissionUtils"

    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 46
    .end local v4    # "ret":Z
    .local v0, "ret":Z
    :goto_77
    return v0

    .line 36
    .end local v0    # "ret":Z
    :cond_78
    :goto_78
    return v0
.end method
