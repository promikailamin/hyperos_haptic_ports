.class final Lcom/android/server/pm/PackageAbiHelperImpl;
.super Ljava/lang/Object;
.source "PackageAbiHelperImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageAbiHelper;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "codePathString"    # Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "codePath":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 60
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    .local v1, "codeRoot":Ljava/io/File;
    goto/16 :goto_102

    .line 61
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_15
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 62
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_102

    .line 63
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_25
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 64
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_102

    .line 65
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_35
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 66
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_102

    .line 67
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_45
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 68
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_102

    .line 69
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_55
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 70
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_102

    .line 71
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_65
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 72
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_102

    .line 73
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_75
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    const-string v2, "Can\'t canonicalize code path "

    const-string v3, "PackageManager"

    if-eqz v1, :cond_ce

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "fullPath":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v6, :cond_b4

    .line 77
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v4, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .local v2, "codeRoot":Ljava/io/File;
    goto :goto_cd

    .line 79
    .end local v2    # "codeRoot":Ljava/io/File;
    :cond_b4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 82
    .end local v4    # "parts":[Ljava/lang/String;
    .local v1, "codeRoot":Ljava/io/File;
    :goto_cd
    goto :goto_102

    .line 86
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_ce
    :try_start_ce
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 87
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 89
    .local v4, "parent":Ljava/io/File;
    :goto_d6
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object v6, v5

    .local v6, "tmp":Ljava/io/File;
    if-eqz v5, :cond_e0

    .line 90
    move-object v1, v4

    .line 91
    move-object v4, v6

    goto :goto_d6

    .line 93
    :cond_e0
    move-object v5, v1

    .line 94
    .local v5, "codeRoot":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized code path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_101} :catch_107

    .line 100
    move-object v1, v5

    .line 102
    .end local v4    # "parent":Ljava/io/File;
    .end local v5    # "codeRoot":Ljava/io/File;
    .end local v6    # "tmp":Ljava/io/File;
    .local v1, "codeRoot":Ljava/io/File;
    :goto_102
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 96
    .end local v1    # "codeRoot":Ljava/io/File;
    :catch_107
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "codePath"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 110
    return-object v0

    .line 112
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "codeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 115
    return-object v2

    .line 116
    :cond_14
    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_44

    .line 120
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Odd, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t look like an APK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-object v0

    .line 117
    :cond_44
    :goto_44
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 118
    .local v0, "lastDot":I
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .registers 21
    .param p0, "abis"    # Lcom/android/server/pm/PackageAbiHelper$Abis;
    .param p1, "appLib32InstallDir"    # Ljava/io/File;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "sourceDir"    # Ljava/lang/String;
    .param p4, "isSystemApp"    # Z
    .param p5, "isUpdatedSystemApp"    # Z

    .line 148
    move-object v0, p0

    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "codeFile":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_10

    if-nez p5, :cond_10

    move v5, v3

    goto :goto_11

    :cond_10
    move v5, v4

    .line 156
    .local v5, "bundledApp":Z
    :goto_11
    invoke-static {v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v6

    const-string v7, "lib"

    if-eqz v6, :cond_7b

    .line 158
    if-eqz v5, :cond_67

    .line 161
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "apkRoot":Ljava/lang/String;
    nop

    .line 163
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-static {v8}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v8

    .line 168
    .local v8, "is64Bit":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 169
    .local v9, "apkName":Ljava/lang/String;
    const-string v10, "lib64"

    if-eqz v8, :cond_32

    move-object v11, v10

    goto :goto_33

    :cond_32
    move-object v11, v7

    .line 170
    .local v11, "libDir":Ljava/lang/String;
    :goto_33
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/String;

    aput-object v11, v14, v4

    aput-object v9, v14, v3

    invoke-static {v12, v14}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 171
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, "nativeLibraryRootDir":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v14, :cond_63

    .line 174
    if-eqz v8, :cond_4e

    goto :goto_4f

    :cond_4e
    move-object v7, v10

    .line 175
    .local v7, "secondaryLibDir":Ljava/lang/String;
    :goto_4f
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array v13, v13, [Ljava/lang/String;

    aput-object v7, v13, v4

    aput-object v9, v13, v3

    invoke-static {v10, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 176
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 177
    .end local v7    # "secondaryLibDir":Ljava/lang/String;
    .local v3, "secondaryNativeLibraryDir":Ljava/lang/String;
    goto :goto_64

    .line 178
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :cond_63
    const/4 v3, 0x0

    .line 180
    .end local v6    # "apkRoot":Ljava/lang/String;
    .end local v8    # "is64Bit":Z
    .end local v9    # "apkName":Ljava/lang/String;
    .end local v11    # "libDir":Ljava/lang/String;
    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_64
    move-object/from16 v6, p1

    goto :goto_78

    .line 181
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    .end local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    :cond_67
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "apkName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v6, p1

    invoke-direct {v4, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 184
    .restart local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v3, v4

    .line 187
    .local v3, "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_78
    const/4 v4, 0x0

    .line 188
    .local v4, "nativeLibraryRootRequiresIsa":Z
    move-object v7, v12

    .local v7, "nativeLibraryDir":Ljava/lang/String;
    goto :goto_a9

    .line 191
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    .end local v4    # "nativeLibraryRootRequiresIsa":Z
    .end local v7    # "nativeLibraryDir":Ljava/lang/String;
    .end local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    :cond_7b
    move-object/from16 v6, p1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 192
    .restart local v12    # "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v4, 0x1

    .line 194
    .restart local v4    # "nativeLibraryRootRequiresIsa":Z
    new-instance v3, Ljava/io/File;

    .line 195
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 197
    .restart local v7    # "nativeLibraryDir":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v3, :cond_a8

    .line 198
    new-instance v3, Ljava/io/File;

    iget-object v8, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 199
    invoke-static {v8}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    goto :goto_a9

    .line 201
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :cond_a8
    const/4 v3, 0x0

    .line 204
    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_a9
    new-instance v8, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-direct {v8, v12, v4, v7, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "apkRoot"    # Ljava/lang/String;
    .param p3, "apkName"    # Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "codeFile":Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v1

    const-string v2, "lib"

    const/4 v3, 0x0

    if-eqz v1, :cond_39

    .line 237
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "lib64"

    invoke-direct {v4, v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 239
    .local v1, "has64BitLibs":Z
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .local v2, "has32BitLibs":Z
    goto :goto_8c

    .line 242
    .end local v1    # "has64BitLibs":Z
    .end local v2    # "has32BitLibs":Z
    :cond_39
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    .local v1, "rootDir":Ljava/io/File;
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 244
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 245
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "isa":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .line 247
    .local v2, "has64BitLibs":Z
    goto :goto_63

    .line 248
    .end local v2    # "has64BitLibs":Z
    :cond_62
    const/4 v2, 0x0

    .line 250
    .restart local v2    # "has64BitLibs":Z
    :goto_63
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 251
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_89

    .line 252
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "isa":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 254
    .local v4, "has32BitLibs":Z
    move v1, v2

    move v2, v4

    goto :goto_8c

    .line 255
    .end local v4    # "has32BitLibs":Z
    :cond_89
    const/4 v4, 0x0

    move v1, v2

    move v2, v4

    .line 259
    .local v1, "has64BitLibs":Z
    .local v2, "has32BitLibs":Z
    :goto_8c
    if-eqz v1, :cond_96

    if-nez v2, :cond_96

    .line 264
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v4, v3

    .line 265
    .local v3, "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_ec

    .line 266
    .end local v3    # "primaryCpuAbi":Ljava/lang/String;
    .end local v4    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_96
    if-eqz v2, :cond_a0

    if-nez v1, :cond_a0

    .line 270
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v4, v3

    .line 271
    .restart local v3    # "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_ec

    .line 272
    .end local v3    # "primaryCpuAbi":Ljava/lang/String;
    .end local v4    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_a0
    if-eqz v2, :cond_ea

    if-eqz v1, :cond_ea

    .line 280
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v4

    if-nez v4, :cond_c8

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has multiple bundled libs, but is not multiarch."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_c8
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 286
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 287
    .local v4, "primaryCpuAbi":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v5, v3

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .local v3, "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_ec

    .line 289
    .end local v3    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    :cond_de
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 290
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v5, v3

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .restart local v3    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_ec

    .line 293
    .end local v3    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    :cond_ea
    const/4 v3, 0x0

    .line 294
    .local v3, "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .line 296
    .local v4, "secondaryCpuAbi":Ljava/lang/String;
    :goto_ec
    new-instance v5, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v5, v3, v4}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private static maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "copyRet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 127
    if-gez p1, :cond_11

    .line 128
    const/16 v0, -0x72

    if-eq p1, v0, :cond_11

    const/16 v0, -0x71

    if-ne p1, v0, :cond_b

    goto :goto_11

    .line 130
    :cond_b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 133
    :cond_11
    :goto_11
    return-void
.end method

.method private shouldExtractLibs(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isUpdatedSystemApp"    # Z

    .line 476
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExtractNativeLibs()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 478
    .local v0, "extractLibs":Z
    :goto_f
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_18

    if-nez p2, :cond_18

    .line 479
    const/4 v0, 0x0

    .line 481
    :cond_18
    return v0
.end method


# virtual methods
.method public deriveNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isUpdatedSystemApp"    # Z
    .param p3, "appLib32InstallDir"    # Ljava/io/File;

    .line 140
    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v4

    .line 140
    move-object v1, p3

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    return-object v0
.end method

.method public derivePackageAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;
    .registers 29
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isUpdatedSystemApp"    # Z
    .param p3, "cpuAbiOverride"    # Ljava/lang/String;
    .param p4, "appLib32InstallDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageAbiHelper$Abis;",
            "Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 305
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    .line 307
    move-object/from16 v4, p4

    move/from16 v8, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v3

    .line 313
    .local v3, "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->shouldExtractLibs(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z

    move-result v4

    .line 315
    .local v4, "extractLibs":Z
    iget-object v5, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    .line 316
    .local v5, "nativeLibraryRootStr":Ljava/lang/String;
    iget-boolean v6, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 317
    .local v6, "useIsaSpecificSubdirs":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v7

    .line 319
    .local v7, "onIncremental":Z
    const/4 v8, 0x0

    .line 320
    .local v8, "primaryCpuAbi":Ljava/lang/String;
    const/4 v9, 0x0

    .line 322
    .local v9, "secondaryCpuAbi":Ljava/lang/String;
    const/4 v10, 0x0

    .line 324
    .local v10, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_34
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createNativeLibraryHandle(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    move-object v10, v0

    .line 331
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "nativeLibraryRoot":Ljava/io/File;
    const/4 v8, 0x0

    .line 335
    const/4 v9, 0x0

    .line 336
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v11
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_44} :catch_1a4
    .catchall {:try_start_34 .. :try_end_44} :catchall_19f

    const-string v12, "copyNativeBinaries"

    const-string v13, "findSupportedAbi"

    if-eqz v11, :cond_107

    .line 337
    const/16 v11, -0x72

    .line 338
    .local v11, "abi32":I
    const/16 v16, -0x72

    .line 339
    .local v16, "abi64":I
    :try_start_4e
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_1a4
    .catchall {:try_start_4e .. :try_end_51} :catchall_19f

    if-lez v14, :cond_76

    .line 340
    if-eqz v4, :cond_63

    .line 341
    const-wide/32 v14, 0x40000

    :try_start_58
    invoke-static {v14, v15, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 342
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v10, v0, v14, v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v14

    move v11, v14

    goto :goto_70

    .line 346
    :cond_63
    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 347
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v10, v14}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v14

    move v11, v14

    .line 350
    :goto_70
    const-wide/32 v14, 0x40000

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_76} :catch_91
    .catchall {:try_start_58 .. :try_end_76} :catchall_8b

    .line 354
    :cond_76
    const-string v14, "Shared library native lib extraction not supported"

    if-ltz v11, :cond_97

    :try_start_7a
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v15

    if-eqz v15, :cond_97

    if-nez v4, :cond_83

    goto :goto_97

    .line 355
    :cond_83
    new-instance v12, Lcom/android/server/pm/PackageManagerException;

    const/16 v13, -0x6e

    invoke-direct {v12, v13, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "extractLibs":Z
    .end local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v6    # "useIsaSpecificSubdirs":Z
    .end local v7    # "onIncremental":Z
    .end local v8    # "primaryCpuAbi":Ljava/lang/String;
    .end local v9    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v10    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    .end local p4    # "appLib32InstallDir":Ljava/io/File;
    throw v12
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_8b} :catch_91
    .catchall {:try_start_7a .. :try_end_8b} :catchall_8b

    .line 461
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v11    # "abi32":I
    .end local v16    # "abi64":I
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "extractLibs":Z
    .restart local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v6    # "useIsaSpecificSubdirs":Z
    .restart local v7    # "onIncremental":Z
    .restart local v8    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v9    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v10    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p4    # "appLib32InstallDir":Ljava/io/File;
    :catchall_8b
    move-exception v0

    move-object v15, v1

    move-object/from16 v17, v2

    goto/16 :goto_1eb

    .line 458
    :catch_91
    move-exception v0

    move-object v15, v1

    move-object/from16 v17, v2

    goto/16 :goto_1a8

    .line 359
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v11    # "abi32":I
    .restart local v16    # "abi64":I
    :cond_97
    :goto_97
    :try_start_97
    const-string v15, "Error unpackaging 32 bit native libs for multiarch app."

    invoke-static {v15, v11}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    .line 362
    sget-object v15, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v15, v15
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9f} :catch_1a4
    .catchall {:try_start_97 .. :try_end_9f} :catchall_19f

    if-lez v15, :cond_cf

    .line 363
    if-eqz v4, :cond_b5

    .line 364
    move-object v15, v1

    move-object/from16 v17, v2

    const-wide/32 v1, 0x40000

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v15, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v17, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :try_start_a9
    invoke-static {v1, v2, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 365
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v10, v0, v1, v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v1

    move/from16 v16, v1

    .end local v16    # "abi64":I
    .local v1, "abi64":I
    goto :goto_c6

    .line 369
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v16    # "abi64":I
    :cond_b5
    move-object v15, v1

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 370
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v1

    .end local v16    # "abi64":I
    .local v1, "abi64":I
    move/from16 v16, v1

    .line 373
    .end local v1    # "abi64":I
    .restart local v16    # "abi64":I
    :goto_c6
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v1, v16

    goto :goto_d4

    .line 362
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :cond_cf
    move-object v15, v1

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    move/from16 v1, v16

    .line 376
    .end local v16    # "abi64":I
    .local v1, "abi64":I
    :goto_d4
    const-string v2, "Error unpackaging 64 bit native libs for multiarch app."

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    .line 379
    if-ltz v1, :cond_f1

    .line 381
    if-eqz v4, :cond_ec

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_e4

    goto :goto_ec

    .line 382
    :cond_e4
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v12, -0x6e

    invoke-direct {v2, v12, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "extractLibs":Z
    .end local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v6    # "useIsaSpecificSubdirs":Z
    .end local v7    # "onIncremental":Z
    .end local v8    # "primaryCpuAbi":Ljava/lang/String;
    .end local v9    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v10    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    .end local p4    # "appLib32InstallDir":Ljava/io/File;
    throw v2

    .line 385
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "extractLibs":Z
    .restart local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v6    # "useIsaSpecificSubdirs":Z
    .restart local v7    # "onIncremental":Z
    .restart local v8    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v9    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v10    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p4    # "appLib32InstallDir":Ljava/io/File;
    :cond_ec
    :goto_ec
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v1

    move-object v8, v2

    .line 388
    :cond_f1
    if-ltz v11, :cond_105

    .line 389
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v11

    .line 390
    .local v2, "abi":Ljava/lang/String;
    if-ltz v1, :cond_104

    .line 391
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUse32BitAbi()Z

    move-result v12

    if-eqz v12, :cond_102

    .line 392
    move-object v9, v8

    .line 393
    move-object v8, v2

    goto :goto_105

    .line 395
    :cond_102
    move-object v9, v2

    goto :goto_105

    .line 398
    :cond_104
    move-object v8, v2

    .line 401
    .end local v1    # "abi64":I
    .end local v2    # "abi":Ljava/lang/String;
    .end local v11    # "abi32":I
    :cond_105
    :goto_105
    goto/16 :goto_19c

    .line 402
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :cond_107
    move-object v15, v1

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p3, :cond_113

    .line 403
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v1

    goto :goto_115

    :cond_113
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 413
    .local v2, "abiList":[Ljava/lang/String;
    :goto_115
    const/4 v11, 0x0

    .line 415
    .local v11, "needsRenderScriptOverride":Z
    sget-object v14, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_137

    if-nez p3, :cond_137

    .line 416
    invoke-static {v10}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v14

    if-eqz v14, :cond_137

    .line 417
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_12d

    .line 418
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    move-object v2, v14

    .line 419
    const/4 v11, 0x1

    goto :goto_137

    .line 421
    :cond_12d
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v12, -0x10

    const-string v13, "Apps that contain RenderScript with target API level < 21 are not supported on 64-bit only platforms"

    invoke-direct {v1, v12, v13}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "extractLibs":Z
    .end local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v6    # "useIsaSpecificSubdirs":Z
    .end local v7    # "onIncremental":Z
    .end local v8    # "primaryCpuAbi":Ljava/lang/String;
    .end local v9    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v10    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    .end local p4    # "appLib32InstallDir":Ljava/io/File;
    throw v1

    .line 429
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "extractLibs":Z
    .restart local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v6    # "useIsaSpecificSubdirs":Z
    .restart local v7    # "onIncremental":Z
    .restart local v8    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v9    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v10    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p4    # "appLib32InstallDir":Ljava/io/File;
    :cond_137
    :goto_137
    if-eqz v4, :cond_145

    .line 430
    const-wide/32 v13, 0x40000

    invoke-static {v13, v14, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 431
    invoke-static {v10, v0, v2, v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v12

    move v1, v12

    .local v12, "copyRet":I
    goto :goto_151

    .line 434
    .end local v12    # "copyRet":I
    :cond_145
    move-object v14, v2

    const-wide/32 v1, 0x40000

    .end local v2    # "abiList":[Ljava/lang/String;
    .local v14, "abiList":[Ljava/lang/String;
    invoke-static {v1, v2, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 435
    move-object v2, v14

    .end local v14    # "abiList":[Ljava/lang/String;
    .restart local v2    # "abiList":[Ljava/lang/String;
    invoke-static {v10, v2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v1

    .line 437
    .local v1, "copyRet":I
    :goto_151
    const-wide/32 v13, 0x40000

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 439
    const/16 v13, -0x72

    if-gez v1, :cond_179

    if-ne v1, v13, :cond_15e

    goto :goto_179

    .line 440
    :cond_15e
    new-instance v12, Lcom/android/server/pm/PackageManagerException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error unpackaging native libs for app, errorCode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, -0x6e

    invoke-direct {v12, v14, v13}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "extractLibs":Z
    .end local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v6    # "useIsaSpecificSubdirs":Z
    .end local v7    # "onIncremental":Z
    .end local v8    # "primaryCpuAbi":Ljava/lang/String;
    .end local v9    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v10    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    .end local p4    # "appLib32InstallDir":Ljava/io/File;
    throw v12

    .line 444
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "extractLibs":Z
    .restart local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v6    # "useIsaSpecificSubdirs":Z
    .restart local v7    # "onIncremental":Z
    .restart local v8    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v9    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v10    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p4    # "appLib32InstallDir":Ljava/io/File;
    :cond_179
    :goto_179
    if-ltz v1, :cond_18f

    .line 446
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v12

    if-nez v12, :cond_185

    .line 450
    aget-object v12, v2, v1

    move-object v8, v12

    goto :goto_19c

    .line 447
    :cond_185
    new-instance v12, Lcom/android/server/pm/PackageManagerException;

    const-string v13, "Shared library with native libs must be multiarch"

    const/16 v14, -0x6e

    invoke-direct {v12, v14, v13}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "extractLibs":Z
    .end local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v6    # "useIsaSpecificSubdirs":Z
    .end local v7    # "onIncremental":Z
    .end local v8    # "primaryCpuAbi":Ljava/lang/String;
    .end local v9    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v10    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "isUpdatedSystemApp":Z
    .end local p3    # "cpuAbiOverride":Ljava/lang/String;
    .end local p4    # "appLib32InstallDir":Ljava/io/File;
    throw v12

    .line 451
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "extractLibs":Z
    .restart local v5    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v6    # "useIsaSpecificSubdirs":Z
    .restart local v7    # "onIncremental":Z
    .restart local v8    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v9    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v10    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "isUpdatedSystemApp":Z
    .restart local p3    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p4    # "appLib32InstallDir":Ljava/io/File;
    :cond_18f
    if-ne v1, v13, :cond_196

    if-eqz p3, :cond_196

    .line 453
    move-object/from16 v8, p3

    goto :goto_19c

    .line 454
    :cond_196
    if-eqz v11, :cond_19c

    .line 455
    const/4 v12, 0x0

    aget-object v12, v2, v12
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_19b} :catch_19d
    .catchall {:try_start_a9 .. :try_end_19b} :catchall_1ea

    move-object v8, v12

    .line 461
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v1    # "copyRet":I
    .end local v2    # "abiList":[Ljava/lang/String;
    .end local v11    # "needsRenderScriptOverride":Z
    :cond_19c
    :goto_19c
    goto :goto_1c5

    .line 458
    :catch_19d
    move-exception v0

    goto :goto_1a8

    .line 461
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :catchall_19f
    move-exception v0

    move-object v15, v1

    move-object/from16 v17, v2

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    goto :goto_1eb

    .line 458
    .end local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :catch_1a4
    move-exception v0

    move-object v15, v1

    move-object/from16 v17, v2

    .line 459
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v15    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v17    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    :goto_1a8
    :try_start_1a8
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get canonical file "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c4
    .catchall {:try_start_1a8 .. :try_end_1c4} :catchall_1ea

    .line 461
    nop

    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1c5
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 462
    nop

    .line 467
    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v0, v8, v9}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .local v0, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    new-instance v1, Landroid/util/Pair;

    .line 470
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v22

    .line 469
    move-object/from16 v18, v0

    move-object/from16 v19, p4

    move/from16 v23, p2

    invoke-static/range {v18 .. v23}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 468
    return-object v1

    .line 461
    .end local v0    # "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    :catchall_1ea
    move-exception v0

    :goto_1eb
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 462
    throw v0
.end method

.method public getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 11
    .param p2, "scannedPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 502
    .local p1, "packagesForUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v0, 0x0

    .line 503
    .local v0, "requiredInstructionSet":Ljava/lang/String;
    if-eqz p2, :cond_d

    .line 504
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 506
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    .line 511
    .local v1, "requirer":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 516
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz p2, :cond_2f

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 517
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 518
    goto :goto_12

    .line 520
    :cond_2f
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    .line 521
    goto :goto_12

    .line 524
    :cond_36
    nop

    .line 525
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "instructionSet":Ljava/lang/String;
    if-eqz v0, :cond_81

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    .line 529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instruction set mismatch, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 530
    if-nez v1, :cond_57

    const-string v6, "[caller]"

    goto :goto_58

    :cond_57
    move-object v6, v1

    :goto_58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " whereas "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, "errorMessage":Ljava/lang/String;
    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .end local v5    # "errorMessage":Ljava/lang/String;
    :cond_81
    if-nez v0, :cond_85

    .line 537
    move-object v0, v4

    .line 538
    move-object v1, v3

    .line 540
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "instructionSet":Ljava/lang/String;
    :cond_85
    goto :goto_12

    .line 542
    :cond_86
    if-nez v0, :cond_8a

    .line 543
    const/4 v2, 0x0

    return-object v2

    .line 546
    :cond_8a
    if-eqz v1, :cond_91

    .line 551
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    .local v2, "adjustedAbi":Ljava/lang/String;
    goto :goto_95

    .line 555
    .end local v2    # "adjustedAbi":Ljava/lang/String;
    :cond_91
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    .line 557
    .restart local v2    # "adjustedAbi":Ljava/lang/String;
    :goto_95
    return-object v2
.end method

.method public getBundledAppAbis(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 210
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "apkName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "apkRoot":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v2

    .line 216
    .local v2, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    return-object v2
.end method
