.class public Lmiui/util/font/SymlinkUtils;
.super Ljava/lang/Object;
.source "SymlinkUtils.java"


# static fields
.field private static final blacklist LINK_FILE:Ljava/lang/String; = "/data/system/fonts/theme_webview/Roboto-Regular.ttf"

.field private static final blacklist LOG_TOKEN:Ljava/lang/String; = "persist.miui.webview.font_debug"

.field private static final blacklist ROBOTO_FILE:Ljava/lang/String; = "/system/fonts/Roboto-Regular.ttf"

.field private static final blacklist TAG:Ljava/lang/String; = "SymlinkUtils"

.field private static final blacklist THEME_FONT_FILE:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Regular.ttf"

.field private static volatile blacklist sLinkedFontFile:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lmiui/util/font/SymlinkUtils;->sLinkedFontFile:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist applyWebView()V
    .registers 1

    .line 159
    invoke-static {}, Lmiui/webview/MiuiWebViewManager;->getInstance()Lmiui/webview/MiuiWebViewManager;

    move-result-object v0

    .line 160
    .local v0, "webViewManager":Lmiui/webview/MiuiWebViewManager;
    invoke-virtual {v0}, Lmiui/webview/MiuiWebViewManager;->restartWebViewProcesses()V

    .line 161
    return-void
.end method

.method private static blacklist chmodOp(Ljava/io/File;I)V
    .registers 6
    .param p0, "path"    # Ljava/io/File;
    .param p1, "mode"    # I

    .line 82
    const-string v0, "SymlinkUtils"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    .line 83
    return-void

    .line 86
    :cond_9
    const/4 v1, 0x1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmodOp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/font/SymlinkUtils;->seLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_38} :catch_39

    .line 92
    goto :goto_54

    .line 90
    :catch_39
    move-exception v1

    .line 91
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmodOp failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_54
    return-void
.end method

.method private static blacklist doProcessSymlink()V
    .registers 5

    .line 122
    const-class v0, Lmiui/util/font/SymlinkUtils;

    monitor-enter v0

    .line 123
    :try_start_3
    invoke-static {}, Lmiui/util/font/FontSettings;->checkMiSansSpecified()V

    .line 124
    invoke-static {}, Lmiui/util/font/FontSettings;->checkUsingThemeFont()V

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lmiui/util/font/FontSettings;->sIsUsingThemeFont:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0x1a4

    if-eqz v2, :cond_31

    .line 127
    const-string v2, "/data/system/theme/fonts/Roboto-Regular.ttf"

    move-object v1, v2

    .line 128
    sget-object v2, Lmiui/util/font/SymlinkUtils;->sLinkedFontFile:Ljava/lang/String;

    if-ne v2, v1, :cond_1d

    .line 129
    monitor-exit v0

    return-void

    .line 131
    :cond_1d
    const-string v2, "/data/system/theme/fonts/Roboto-Regular.ttf"

    const-string v4, "/data/system/fonts/theme_webview/Roboto-Regular.ttf"

    invoke-static {v2, v4}, Lmiui/util/font/SymlinkUtils;->linkOp(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/fonts/theme_webview/Roboto-Regular.ttf"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lmiui/util/font/SymlinkUtils;->chmodOp(Ljava/io/File;I)V

    .line 133
    sput-object v1, Lmiui/util/font/SymlinkUtils;->sLinkedFontFile:Ljava/lang/String;

    goto :goto_70

    .line 135
    :cond_31
    invoke-static {}, Lmiui/util/font/FontSettings;->isMiuiFontEnabled()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 136
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_45

    .line 137
    invoke-static {}, Lmiui/util/font/FontSettings;->getPreferredLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lmiui/util/font/MultiLangHelper;->getMiuiFontPathByLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_56

    .line 139
    :cond_45
    sget-object v2, Lmiui/util/font/FontSettings;->MIPRO_FILE:Ljava/lang/String;

    move-object v1, v2

    goto :goto_56

    .line 141
    :cond_49
    invoke-static {}, Lmiui/util/font/FontSettings;->isMiuiOptimizeEnabled()Z

    move-result v2

    if-nez v2, :cond_53

    .line 142
    sget-object v2, Lmiui/util/font/FontSettings;->MIPRO_FILE:Ljava/lang/String;

    move-object v1, v2

    goto :goto_56

    .line 144
    :cond_53
    const-string v2, "/system/fonts/Roboto-Regular.ttf"

    move-object v1, v2

    .line 146
    :goto_56
    sget-object v2, Lmiui/util/font/SymlinkUtils;->sLinkedFontFile:Ljava/lang/String;

    if-ne v2, v1, :cond_5c

    .line 147
    monitor-exit v0

    return-void

    .line 149
    :cond_5c
    const-string v2, "/data/system/fonts/theme_webview/Roboto-Regular.ttf"

    invoke-static {v1, v2}, Lmiui/util/font/SymlinkUtils;->linkOp(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/fonts/theme_webview/Roboto-Regular.ttf"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lmiui/util/font/SymlinkUtils;->chmodOp(Ljava/io/File;I)V

    .line 151
    invoke-static {}, Lmiui/util/font/SymlinkUtils;->applyWebView()V

    .line 152
    sput-object v1, Lmiui/util/font/SymlinkUtils;->sLinkedFontFile:Ljava/lang/String;

    .line 154
    .end local v1    # "path":Ljava/lang/String;
    :goto_70
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw v1
.end method

.method private static blacklist isTargetProcess()Z
    .registers 3

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current process name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SymlinkUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz v0, :cond_29

    const-string v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 188
    const/4 v1, 0x1

    return v1

    .line 190
    :cond_29
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist linkOp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "targetPath"    # Ljava/lang/String;
    .param p1, "linkPath"    # Ljava/lang/String;

    .line 67
    const-string v0, "SymlinkUtils"

    :try_start_2
    invoke-static {p1}, Lmiui/util/font/SymlinkUtils;->removeOp(Ljava/lang/String;)V

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_27

    .line 69
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 70
    .local v1, "link":Ljava/nio/file/Path;
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v3, p0, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 71
    .local v3, "target":Ljava/nio/file/Path;
    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v3, v2}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 72
    nop

    .end local v1    # "link":Ljava/nio/file/Path;
    .end local v3    # "target":Ljava/nio/file/Path;
    goto :goto_2a

    .line 73
    :cond_27
    invoke-static {p0, p1}, Landroid/miui/Shell;->link(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    :goto_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkOp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/font/SymlinkUtils;->seLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4a} :catch_4b

    .line 78
    goto :goto_66

    .line 76
    :catch_4b
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkOp failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :goto_66
    return-void
.end method

.method public static blacklist onAttachApplication()V
    .registers 6

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    .local v0, "t0":J
    invoke-static {}, Lmiui/util/font/SymlinkUtils;->doProcessSymlink()V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 167
    .local v2, "tUse":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachApplication file op go pass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SymlinkUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method private static blacklist removeOp(Ljava/lang/String;)V
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_a

    .line 97
    invoke-static {p0}, Lmiui/util/font/SymlinkUtils;->rmFile(Ljava/lang/String;)V

    goto :goto_d

    .line 99
    :cond_a
    invoke-static {p0}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 101
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SymlinkUtils"

    invoke-static {v1, v0}, Lmiui/util/font/SymlinkUtils;->seLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private static blacklist rmFile(Ljava/lang/String;)V
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .line 105
    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    goto :goto_35

    .line 108
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 111
    .local v2, "subFiles":[Ljava/io/File;
    if-eqz v2, :cond_1e

    array-length v3, v2

    if-ge v3, v1, :cond_21

    .line 112
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 114
    :cond_21
    array-length v1, v2

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v1, :cond_31

    aget-object v4, v2, v3

    .line 115
    .local v4, "sub":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/util/font/SymlinkUtils;->rmFile(Ljava/lang/String;)V

    .line 114
    .end local v4    # "sub":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 118
    .end local v2    # "subFiles":[Ljava/io/File;
    :cond_31
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 119
    return-void

    .line 106
    .end local v0    # "file":Ljava/io/File;
    :cond_35
    :goto_35
    return-void
.end method

.method private static blacklist seLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "logString"    # Ljava/lang/String;

    .line 199
    const-string v0, "persist.miui.webview.font_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 200
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 202
    :cond_12
    const-string v0, "log token not setted!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_17
    return-void
.end method

.method public static blacklist syncFontForWebView()V
    .registers 6

    .line 171
    invoke-static {}, Lmiui/util/font/SymlinkUtils;->isTargetProcess()Z

    move-result v0

    if-nez v0, :cond_7

    .line 172
    return-void

    .line 175
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    .local v0, "t0":J
    invoke-static {}, Lmiui/util/font/SymlinkUtils;->doProcessSymlink()V

    .line 177
    invoke-static {}, Lmiui/util/font/SymlinkUtils;->applyWebView()V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 179
    .local v2, "tUse":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file op go pass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SymlinkUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method
