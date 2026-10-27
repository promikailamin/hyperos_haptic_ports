.class public Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;
.super Ljava/lang/Object;
.source "DirectIndexedFileExtractor.java"


# static fields
.field private static final blacklist IDF_DIR_NAME:Ljava/lang/String; = "idf"

.field public static whitelist IDF_FILES_PATH:Ljava/lang/String; = null

.field private static final blacklist IDF_FILE_EXT:Ljava/lang/String; = ".idf"

.field private static final blacklist TAG:Ljava/lang/String; = "DirectIndexedFileExtractor"

.field private static final blacklist TARGET_DIR_MODE:I = 0x1f9

.field private static final blacklist TARGET_FILE_MODE:I = 0x1b4

.field private static final blacklist TMP_FILE_NAME_POSTFIX:Ljava/lang/String; = "-tmp"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smextractDirectIndexedFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->extractDirectIndexedFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 5
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "result":Z
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_16

    .line 269
    .local v1, "in":Ljava/io/InputStream;
    :try_start_6
    invoke-static {v1, p1}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_10

    move v0, v2

    .line 271
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 272
    nop

    .line 275
    .end local v1    # "in":Ljava/io/InputStream;
    goto :goto_18

    .line 271
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_10
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 272
    nop

    .end local v0    # "result":Z
    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "destFile":Ljava/io/File;
    throw v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_16

    .line 273
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "result":Z
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "destFile":Ljava/io/File;
    :catch_16
    move-exception v1

    .line 274
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 276
    .end local v1    # "e":Ljava/io/IOException;
    :goto_18
    return v0
.end method

.method public static whitelist copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .line 232
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_e

    .line 234
    return v0

    .line 237
    :cond_e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_46

    .line 239
    .local v1, "out":Ljava/io/FileOutputStream;
    const/16 v2, 0x1000

    :try_start_15
    new-array v2, v2, [B

    .line 241
    .local v2, "buffer":[B
    :goto_17
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "bytesRead":I
    if-ltz v3, :cond_22

    .line 242
    invoke-virtual {v1, v2, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_34

    goto :goto_17

    .line 245
    .end local v2    # "buffer":[B
    .end local v4    # "bytesRead":I
    :cond_22
    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_46

    .line 247
    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 250
    goto :goto_2e

    .line 248
    :catch_2d
    move-exception v2

    .line 251
    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 252
    nop

    .line 253
    const/4 v0, 0x1

    return v0

    .line 245
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_38} :catch_46

    .line 247
    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3f} :catch_40

    .line 250
    goto :goto_41

    .line 248
    :catch_40
    move-exception v3

    .line 251
    :goto_41
    :try_start_41
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 252
    nop

    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "destFile":Ljava/io/File;
    throw v2
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_46

    .line 254
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "destFile":Ljava/io/File;
    :catch_46
    move-exception v1

    .line 255
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private static blacklist ensureIdfPath(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    sget-object v0, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-nez v0, :cond_5c

    .line 70
    :try_start_4
    const-string v0, "android.miui"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, "sdkContext":Landroid/content/Context;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_d} :catch_58

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2e

    .line 76
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 77
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "createDeviceProtectedStorageContext"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 78
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_26} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_26} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_26} :catch_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_26} :catch_58

    .line 79
    .local v3, "deviceContext":Landroid/content/Context;
    move-object v0, v3

    .line 86
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "deviceContext":Landroid/content/Context;
    :goto_27
    goto :goto_2e

    .line 84
    :catch_28
    move-exception v1

    goto :goto_2e

    .line 82
    :catch_2a
    move-exception v1

    goto :goto_27

    .line 80
    :catch_2c
    move-exception v1

    goto :goto_27

    .line 89
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "idf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_57} :catch_58

    .line 95
    .end local v0    # "sdkContext":Landroid/content/Context;
    :cond_57
    goto :goto_5c

    .line 93
    :catch_58
    move-exception v0

    .line 94
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 98
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5c
    :goto_5c
    sget-object v0, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-eqz v0, :cond_7b

    .line 99
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "idfDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7a

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 101
    sget-object v1, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    const/16 v2, 0x1f9

    invoke-static {v1, v2}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    .line 103
    .end local v0    # "idfDir":Ljava/io/File;
    :cond_7a
    goto :goto_82

    .line 104
    :cond_7b
    const-string v0, "DirectIndexedFileExtractor"

    const-string v1, "Error: Cannot locate IDF_FILES_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_82
    return-void
.end method

.method private static blacklist extractDirectIndexedFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 109
    invoke-static {p0, p1}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "directIndexedFilePath":Ljava/lang/String;
    const-string v1, "DirectIndexedFileExtractor"

    if-nez v0, :cond_e

    .line 111
    const-string v2, "directIndexedFilePath is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 115
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c6

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 117
    .local v2, "mAssets":Landroid/content/res/AssetManager;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v3, "targetFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 120
    invoke-static {p0, p1, v0}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->shouldOverwrite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 122
    const-string v4, " don\'t need overwrite"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 126
    :cond_33
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v4, "tmpTargetFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 129
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_4c
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    move-object v5, v6

    .line 130
    invoke-static {v5, v4}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v6

    .line 131
    .local v6, "copyResult":Z
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 132
    if-eqz v6, :cond_80

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 133
    const/16 v7, 0x1b4

    invoke-static {v0, v7}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " extraction completed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 136
    :cond_80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " copy failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_9a} :catch_ac
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_9a} :catch_a2
    .catchall {:try_start_4c .. :try_end_9a} :catchall_a0

    .line 143
    .end local v6    # "copyResult":Z
    :goto_9a
    if-eqz v5, :cond_c6

    .line 145
    :try_start_9c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_b6

    goto :goto_b5

    .line 143
    :catchall_a0
    move-exception v1

    goto :goto_bb

    .line 140
    :catch_a2
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/IOException;
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a0

    .line 143
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_c6

    .line 145
    :try_start_a8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_b6

    goto :goto_b5

    .line 138
    :catch_ac
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_ad
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_a0

    .line 143
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v5, :cond_c6

    .line 145
    :try_start_b2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6

    .line 148
    :goto_b5
    goto :goto_c6

    .line 146
    :catch_b6
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_b5

    .line 143
    :goto_bb
    if-eqz v5, :cond_c5

    .line 145
    :try_start_bd
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    .line 148
    goto :goto_c5

    .line 146
    :catch_c1
    move-exception v6

    .line 147
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 150
    .end local v6    # "e":Ljava/io/IOException;
    :cond_c5
    :goto_c5
    throw v1

    .line 152
    .end local v2    # "mAssets":Landroid/content/res/AssetManager;
    .end local v3    # "targetFile":Ljava/io/File;
    .end local v4    # "tmpTargetFile":Ljava/io/File;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    :cond_c6
    :goto_c6
    return-void
.end method

.method public static whitelist getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 223
    invoke-static {p0}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->ensureIdfPath(Landroid/content/Context;)V

    .line 224
    sget-object v0, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 225
    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist replaceDirectIndexedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 156
    invoke-static {p0, p2}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "destPath":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "DirectIndexedFileExtractor"

    if-eqz v1, :cond_13

    .line 158
    const-string v1, "replaceDirectIndexedFile srcPath is null"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v2

    .line 161
    :cond_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 162
    const-string v1, "replaceDirectIndexedFile destPath is null"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v2

    .line 165
    :cond_1f
    const/4 v1, 0x0

    .line 166
    .local v1, "ret":Z
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, "tmpTargetFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v5, "destFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v4}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    .line 169
    .local v6, "copyResult":Z
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5a

    .line 170
    new-array v7, v8, [Ljava/lang/Object;

    aput-object p2, v7, v2

    const-string v9, "old idf file:%s delete fail"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_5a
    if-eqz v6, :cond_83

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " copy and rename success."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/16 v2, 0x1b4

    invoke-static {v0, v2}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_a6

    .line 176
    :cond_83
    const/4 v7, 0x1

    .line 177
    .local v7, "tmpDel":Z
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    .line 180
    :cond_8e
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 181
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, v8

    .line 180
    const-string v2, "%s copy or rename failed , tmp file delete: %s"

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v7    # "tmpDel":Z
    :goto_a6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replaceDirectIndexedFile result is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v1
.end method

.method private static blacklist shouldOverwrite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "existedFilePath"    # Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 190
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 192
    .local v1, "mAssetsReader":Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_7
    invoke-virtual {v0, p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    move-result-object v4
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_32

    move-object v1, v4

    .line 198
    nop

    .line 200
    const/4 v4, 0x0

    .line 202
    .local v4, "mFileReader":Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;
    :try_start_12
    invoke-static {p2}, Lmiui/telephony/phonenumber/DirectIndexedFile;->open(Ljava/lang/String;)Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    move-result-object v5
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_2a

    move-object v4, v5

    .line 208
    nop

    .line 210
    invoke-virtual {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->getDataVersion()I

    move-result v5

    invoke-virtual {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->getDataVersion()I

    move-result v6

    if-le v5, v6, :cond_23

    move v2, v3

    .line 211
    .local v2, "ret":Z
    :cond_23
    invoke-virtual {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->close()V

    .line 212
    invoke-virtual {v4}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->close()V

    .line 213
    return v2

    .line 203
    .end local v2    # "ret":Z
    :catch_2a
    move-exception v2

    .line 204
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    invoke-virtual {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->close()V

    .line 207
    return v3

    .line 194
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "mFileReader":Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;
    :catch_32
    move-exception v3

    .line 195
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 197
    return v2
.end method

.method public static whitelist tryExtractDirectIndexedFiles(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    invoke-static {p0}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->ensureIdfPath(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 49
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_7
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "assetFiles":[Ljava/lang/String;
    new-instance v2, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor$1;

    invoke-direct {v2, v1, p0}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor$1;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 60
    invoke-virtual {v2, v3}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_1a

    .line 64
    nop

    .end local v1    # "assetFiles":[Ljava/lang/String;
    goto :goto_25

    .line 61
    :catch_1a
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "DirectIndexedFileExtractor"

    const-string v3, "Error reading asset files, extraction abort"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    :goto_25
    return-void
.end method
