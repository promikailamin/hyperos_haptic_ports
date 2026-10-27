.class Lcom/android/internal/os/ZygoteInitInjector;
.super Ljava/lang/Object;
.source "ZygoteInitInjector.java"


# static fields
.field private static final blacklist PRELOADED_MIUI_CLASSES:Ljava/lang/String; = "preloaded-miui-classes"

.field private static final blacklist PRELOADED_MIUI_CLASSES_FILE:Ljava/lang/String; = "/system/etc/preloaded-miui-classes"

.field private static final blacklist ROOT_GID:I = 0x0

.field private static final blacklist ROOT_UID:I = 0x0

.field private static final blacklist SECOND_ZYGOTE_NAME:Ljava/lang/String; = "zygote_secondary"

.field private static final blacklist TAG:Ljava/lang/String; = "ZygoteInitInjector"

.field private static final blacklist UNPRIVILEGED_GID:I = 0x270f

.field private static final blacklist UNPRIVILEGED_UID:I = 0x270f

.field private static blacklist processName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist preloadMiuiClasses()V
    .registers 17

    .line 56
    const-string v1, "PreloadDexCaches"

    const-string v2, "ZygoteInitInjector"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 60
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    :try_start_8
    new-instance v0, Ljava/io/FileInputStream;

    const-string v4, "/system/etc/preloaded-miui-classes"

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_f} :catch_1a1

    move-object v4, v0

    .line 64
    .local v4, "is":Ljava/io/InputStream;
    nop

    .line 66
    const-string v0, "Preloading classes..."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 70
    .local v5, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v7

    .line 71
    .local v7, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v8

    .line 76
    .local v8, "regid":I
    const/4 v9, 0x0

    .line 77
    .local v9, "droppedPriviliges":Z
    const-string v10, "Failed to drop root"

    const/4 v11, 0x0

    if-nez v7, :cond_3c

    if-nez v8, :cond_3c

    .line 79
    const/16 v0, 0x270f

    :try_start_2c
    invoke-static {v11, v0}, Landroid/system/Os;->setregid(II)V

    .line 80
    invoke-static {v11, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_32
    .catch Landroid/system/ErrnoException; {:try_start_2c .. :try_end_32} :catch_35

    .line 83
    nop

    .line 85
    const/4 v9, 0x1

    goto :goto_3c

    .line 81
    :catch_35
    move-exception v0

    .line 82
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 89
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_3c
    :goto_3c
    :try_start_3c
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v15, 0x100

    invoke-direct {v0, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v14, v0

    .line 92
    .local v14, "br":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    move v15, v0

    .line 94
    .local v15, "count":I
    :goto_4b
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .local v16, "line":Ljava/lang/String;
    if-eqz v0, :cond_10d

    .line 96
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 97
    const-string v0, "#"

    move-object/from16 v11, v16

    .end local v16    # "line":Ljava/lang/String;
    .local v11, "line":Ljava/lang/String;
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10a

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 98
    goto/16 :goto_10a

    .line 101
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PreloadClass "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v12, 0x4000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_85} :catch_15a
    .catchall {:try_start_3c .. :try_end_85} :catchall_158

    .line 111
    const/4 v0, 0x0

    const/4 v12, 0x1

    :try_start_87
    invoke-static {v11, v12, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_8a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_87 .. :try_end_8a} :catch_e8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_87 .. :try_end_8a} :catch_c3
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8e

    .line 112
    add-int/lit8 v15, v15, 0x1

    .line 126
    goto/16 :goto_102

    .line 117
    :catchall_8e
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 118
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_91
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error preloading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    instance-of v12, v0, Ljava/lang/Error;

    if-nez v12, :cond_bf

    .line 122
    instance-of v12, v0, Ljava/lang/RuntimeException;

    if-eqz v12, :cond_b9

    .line 123
    move-object v12, v0

    check-cast v12, Ljava/lang/RuntimeException;

    .end local v3    # "runtime":Ldalvik/system/VMRuntime;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "startTime":J
    .end local v7    # "reuid":I
    .end local v8    # "regid":I
    .end local v9    # "droppedPriviliges":Z
    throw v12

    .line 125
    .restart local v3    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "startTime":J
    .restart local v7    # "reuid":I
    .restart local v8    # "regid":I
    .restart local v9    # "droppedPriviliges":Z
    :cond_b9
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "runtime":Ldalvik/system/VMRuntime;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "startTime":J
    .end local v7    # "reuid":I
    .end local v8    # "regid":I
    .end local v9    # "droppedPriviliges":Z
    throw v12

    .line 120
    .restart local v3    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "startTime":J
    .restart local v7    # "reuid":I
    .restart local v8    # "regid":I
    .restart local v9    # "droppedPriviliges":Z
    :cond_bf
    move-object v12, v0

    check-cast v12, Ljava/lang/Error;

    .end local v3    # "runtime":Ldalvik/system/VMRuntime;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "startTime":J
    .end local v7    # "reuid":I
    .end local v8    # "regid":I
    .end local v9    # "droppedPriviliges":Z
    throw v12

    .line 115
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v3    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "startTime":J
    .restart local v7    # "reuid":I
    .restart local v8    # "regid":I
    .restart local v9    # "droppedPriviliges":Z
    :catch_c3
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 116
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Problem preloading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    nop

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_102

    .line 113
    :catch_e8
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 114
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Class not found for preloading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    nop

    .line 127
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_102
    const-wide/16 v12, 0x4000

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v11, 0x0

    goto/16 :goto_4b

    .line 94
    .end local v11    # "line":Ljava/lang/String;
    :cond_10a
    :goto_10a
    const/4 v11, 0x0

    goto/16 :goto_4b

    .line 130
    .restart local v16    # "line":Ljava/lang/String;
    :cond_10d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...preloaded "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " classes in "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "ms."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_138} :catch_15a
    .catchall {:try_start_91 .. :try_end_138} :catchall_158

    .line 135
    nop

    .end local v14    # "br":Ljava/io/BufferedReader;
    .end local v15    # "count":I
    .end local v16    # "line":Ljava/lang/String;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    const-wide/16 v11, 0x4000

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 139
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 140
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 143
    if-eqz v9, :cond_180

    .line 145
    const/4 v1, 0x0

    :try_start_14a
    invoke-static {v1, v1}, Landroid/system/Os;->setreuid(II)V

    .line 146
    invoke-static {v1, v1}, Landroid/system/Os;->setregid(II)V
    :try_end_150
    .catch Landroid/system/ErrnoException; {:try_start_14a .. :try_end_150} :catch_151

    goto :goto_178

    .line 147
    :catch_151
    move-exception v0

    .line 148
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 135
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catchall_158
    move-exception v0

    goto :goto_181

    .line 132
    :catch_15a
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    :try_start_15b
    const-string v11, "Error reading /system/etc/preloaded-miui-classes."

    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_160
    .catchall {:try_start_15b .. :try_end_160} :catchall_158

    .line 135
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    const-wide/16 v11, 0x4000

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 139
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 140
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 143
    if-eqz v9, :cond_180

    .line 145
    const/4 v1, 0x0

    :try_start_172
    invoke-static {v1, v1}, Landroid/system/Os;->setreuid(II)V

    .line 146
    invoke-static {v1, v1}, Landroid/system/Os;->setregid(II)V
    :try_end_178
    .catch Landroid/system/ErrnoException; {:try_start_172 .. :try_end_178} :catch_179

    .line 149
    :goto_178
    goto :goto_180

    .line 147
    :catch_179
    move-exception v0

    .line 148
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 152
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_180
    :goto_180
    return-void

    .line 135
    :goto_181
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    const-wide/16 v11, 0x4000

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 139
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 140
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 143
    if-eqz v9, :cond_1a0

    .line 145
    const/4 v1, 0x0

    :try_start_192
    invoke-static {v1, v1}, Landroid/system/Os;->setreuid(II)V

    .line 146
    invoke-static {v1, v1}, Landroid/system/Os;->setregid(II)V
    :try_end_198
    .catch Landroid/system/ErrnoException; {:try_start_192 .. :try_end_198} :catch_199

    .line 149
    goto :goto_1a0

    .line 147
    :catch_199
    move-exception v0

    .line 148
    .restart local v0    # "ex":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 151
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_1a0
    :goto_1a0
    throw v0

    .line 61
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "startTime":J
    .end local v7    # "reuid":I
    .end local v8    # "regid":I
    .end local v9    # "droppedPriviliges":Z
    :catch_1a1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "Couldn\'t find /system/etc/preloaded-miui-classes."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method static blacklist preloadMiuiResources(Landroid/content/res/Resources;)V
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 39
    sget-object v0, Lcom/android/internal/os/ZygoteInitInjector;->processName:Ljava/lang/String;

    const-string v1, "zygote_secondary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 40
    const-string v0, "ZygoteInitInjector"

    const-string v1, "skip the second zygote 32 preload miui resource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 43
    :cond_12
    invoke-static {}, Lcom/android/internal/os/ZygoteInitInjector;->preloadMiuiClasses()V

    .line 44
    return-void
.end method
