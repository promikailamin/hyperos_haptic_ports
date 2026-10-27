.class public Lmiui/util/CertificateUtils;
.super Ljava/lang/Object;
.source "CertificateUtils.java"


# static fields
.field private static final blacklist DEBUG_JAR:Z = false

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lmiui/util/CertificateUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist collectCertificates(Ljava/io/File;Ljava/util/Set;)Z
    .registers 18
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;)Z"
        }
    .end annotation

    .line 32
    .local p1, "sigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    const-class v1, Lmiui/util/CertificateUtils;

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->clear()V

    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, "readBuffer":[B
    monitor-enter v1

    .line 36
    :try_start_7
    sget-object v3, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    .line 37
    .local v3, "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v3, :cond_15

    .line 38
    const/4 v4, 0x0

    sput-object v4, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    .line 39
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v2, v4

    .line 41
    :cond_15
    if-nez v2, :cond_22

    .line 42
    const/16 v4, 0x2000

    new-array v4, v4, [B

    move-object v2, v4

    .line 43
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    .line 45
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_271

    .line 49
    const/4 v4, 0x0

    :try_start_24
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lt v5, v6, :cond_43

    .line 51
    const-class v5, Ljava/util/jar/JarFile;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarFile;

    .local v5, "jarFile":Ljava/util/jar/JarFile;
    goto :goto_60

    .line 54
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    :cond_43
    const-class v5, Ljava/util/jar/JarFile;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarFile;

    .line 57
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    :goto_60
    const/4 v6, 0x0

    .line 58
    .local v6, "certs":[Ljava/security/cert/Certificate;
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 59
    .local v7, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_65
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_122

    .line 60
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/jar/JarEntry;

    .line 61
    .local v9, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_78

    .line 62
    goto :goto_65

    .line 64
    :cond_78
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 66
    .local v10, "name":Ljava/lang/String;
    const-string v11, "META-INF/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_85

    .line 67
    goto :goto_65

    .line 69
    :cond_85
    invoke-static {v5, v9, v2}, Lmiui/util/CertificateUtils;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v11

    .line 76
    .local v11, "localCerts":[Ljava/security/cert/Certificate;
    if-nez v11, :cond_bf

    .line 77
    sget-object v1, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JarFile "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " has no certificates at entry "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 79
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "; ignoring!"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    .line 81
    return v4

    .line 82
    :cond_bf
    if-nez v6, :cond_c3

    .line 83
    move-object v6, v11

    goto :goto_11f

    .line 86
    :cond_c3
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_c4
    array-length v13, v6

    if-ge v12, v13, :cond_11f

    .line 87
    const/4 v13, 0x0

    .line 88
    .local v13, "found":Z
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_c9
    array-length v15, v11

    if-ge v14, v15, :cond_e0

    .line 89
    aget-object v15, v6, v12

    if-eqz v15, :cond_dc

    aget-object v15, v6, v12

    aget-object v8, v11, v14

    .line 90
    invoke-virtual {v15, v8}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_dc

    .line 91
    const/4 v13, 0x1

    .line 92
    goto :goto_e0

    .line 88
    :cond_dc
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_c9

    .line 95
    .end local v14    # "j":I
    :cond_e0
    :goto_e0
    if-eqz v13, :cond_eb

    array-length v8, v6

    array-length v14, v11

    if-eq v8, v14, :cond_e7

    goto :goto_eb

    .line 86
    .end local v13    # "found":Z
    :cond_e7
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_c4

    .line 96
    .restart local v13    # "found":Z
    :cond_eb
    :goto_eb
    sget-object v1, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "JarFile "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, " has mismatched certificates at entry "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 98
    invoke-virtual {v9}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "; ignoring!"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    .line 100
    return v4

    .line 104
    .end local v9    # "je":Ljava/util/jar/JarEntry;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v12    # "i":I
    .end local v13    # "found":Z
    :cond_11f
    :goto_11f
    const/4 v8, 0x1

    goto/16 :goto_65

    .line 105
    :cond_122
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V

    .line 107
    monitor-enter v1
    :try_end_126
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_24 .. :try_end_126} :catch_250
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_126} :catch_22f
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_126} :catch_20e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_126} :catch_1ed
    .catch Ljava/lang/InstantiationException; {:try_start_24 .. :try_end_126} :catch_1cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_126} :catch_1ab
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_126} :catch_18a

    .line 108
    :try_start_126
    sput-object v3, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    .line 109
    monitor-exit v1
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_170

    .line 111
    if-eqz v6, :cond_14b

    :try_start_12b
    array-length v1, v6

    if-lez v1, :cond_14b

    .line 112
    array-length v1, v6

    .line 113
    .local v1, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_130
    if-ge v8, v1, :cond_145

    .line 114
    new-instance v9, Landroid/content/pm/Signature;

    aget-object v10, v6, v8

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/pm/Signature;-><init>([B)V
    :try_end_13d
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_12b .. :try_end_13d} :catch_250
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_13d} :catch_22f
    .catch Ljava/lang/RuntimeException; {:try_start_12b .. :try_end_13d} :catch_20e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12b .. :try_end_13d} :catch_1ed
    .catch Ljava/lang/InstantiationException; {:try_start_12b .. :try_end_13d} :catch_1cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_12b .. :try_end_13d} :catch_1ab
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12b .. :try_end_13d} :catch_18a

    move-object/from16 v10, p1

    :try_start_13f
    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v8, v8, 0x1

    goto :goto_130

    :cond_145
    move-object/from16 v10, p1

    .line 116
    .end local v1    # "N":I
    .end local v8    # "i":I
    nop

    .line 142
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .end local v6    # "certs":[Ljava/security/cert/Certificate;
    .end local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    nop

    .line 143
    const/4 v1, 0x1

    return v1

    .line 111
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v6    # "certs":[Ljava/security/cert/Certificate;
    .restart local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_14b
    move-object/from16 v10, p1

    .line 117
    sget-object v1, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JarFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has no certificates; ignoring!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16f
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_13f .. :try_end_16f} :catch_185
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_16f} :catch_182
    .catch Ljava/lang/RuntimeException; {:try_start_13f .. :try_end_16f} :catch_17f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13f .. :try_end_16f} :catch_17c
    .catch Ljava/lang/InstantiationException; {:try_start_13f .. :try_end_16f} :catch_17a
    .catch Ljava/lang/IllegalAccessException; {:try_start_13f .. :try_end_16f} :catch_178
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13f .. :try_end_16f} :catch_176

    .line 119
    return v4

    .line 109
    :catchall_170
    move-exception v0

    move-object/from16 v10, p1

    :goto_173
    move-object v8, v0

    :try_start_174
    monitor-exit v1
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_188

    .end local v2    # "readBuffer":[B
    .end local v3    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "sigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    :try_start_175
    throw v8
    :try_end_176
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_175 .. :try_end_176} :catch_185
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_176} :catch_182
    .catch Ljava/lang/RuntimeException; {:try_start_175 .. :try_end_176} :catch_17f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_175 .. :try_end_176} :catch_17c
    .catch Ljava/lang/InstantiationException; {:try_start_175 .. :try_end_176} :catch_17a
    .catch Ljava/lang/IllegalAccessException; {:try_start_175 .. :try_end_176} :catch_178
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_175 .. :try_end_176} :catch_176

    .line 139
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .end local v6    # "certs":[Ljava/security/cert/Certificate;
    .end local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v2    # "readBuffer":[B
    .restart local v3    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "sigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    :catch_176
    move-exception v0

    goto :goto_18d

    .line 136
    :catch_178
    move-exception v0

    goto :goto_1ae

    .line 133
    :catch_17a
    move-exception v0

    goto :goto_1cf

    .line 130
    :catch_17c
    move-exception v0

    goto/16 :goto_1f0

    .line 127
    :catch_17f
    move-exception v0

    goto/16 :goto_211

    .line 124
    :catch_182
    move-exception v0

    goto/16 :goto_232

    .line 121
    :catch_185
    move-exception v0

    goto/16 :goto_253

    .line 109
    .restart local v5    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v6    # "certs":[Ljava/security/cert/Certificate;
    .restart local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :catchall_188
    move-exception v0

    goto :goto_173

    .line 139
    .end local v5    # "jarFile":Ljava/util/jar/JarFile;
    .end local v6    # "certs":[Ljava/security/cert/Certificate;
    .end local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :catch_18a
    move-exception v0

    move-object/from16 v10, p1

    :goto_18d
    move-object v1, v0

    .line 140
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    return v4

    .line 136
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1ab
    move-exception v0

    move-object/from16 v10, p1

    :goto_1ae
    move-object v1, v0

    .line 137
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    return v4

    .line 133
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1cc
    move-exception v0

    move-object/from16 v10, p1

    :goto_1cf
    move-object v1, v0

    .line 134
    .local v1, "e":Ljava/lang/InstantiationException;
    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    return v4

    .line 130
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1ed
    move-exception v0

    move-object/from16 v10, p1

    :goto_1f0
    move-object v1, v0

    .line 131
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    return v4

    .line 127
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_20e
    move-exception v0

    move-object/from16 v10, p1

    :goto_211
    move-object v1, v0

    .line 128
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    return v4

    .line 124
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_22f
    move-exception v0

    move-object/from16 v10, p1

    :goto_232
    move-object v1, v0

    .line 125
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    return v4

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    :catch_250
    move-exception v0

    move-object/from16 v10, p1

    :goto_253
    move-object v1, v0

    .line 122
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    sget-object v5, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    return v4

    .line 45
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v3    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :catchall_271
    move-exception v0

    move-object/from16 v10, p1

    :goto_274
    move-object v3, v0

    :try_start_275
    monitor-exit v1
    :try_end_276
    .catchall {:try_start_275 .. :try_end_276} :catchall_277

    throw v3

    :catchall_277
    move-exception v0

    goto :goto_274
.end method

.method public static blacklist compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 8
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 147
    if-nez p0, :cond_8

    .line 148
    if-nez p1, :cond_6

    .line 149
    const/4 v0, 0x1

    goto :goto_7

    .line 150
    :cond_6
    const/4 v0, -0x1

    .line 148
    :goto_7
    return v0

    .line 152
    :cond_8
    if-nez p1, :cond_c

    .line 153
    const/4 v0, -0x2

    return v0

    .line 155
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_1e

    aget-object v4, p0, v3

    .line 157
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v4    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 159
    :cond_1e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v3, p1

    move v4, v2

    :goto_25
    if-ge v4, v3, :cond_2f

    aget-object v5, p1, v4

    .line 161
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 164
    :cond_2f
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 165
    return v2

    .line 167
    :cond_36
    const/4 v2, -0x3

    return v2
.end method

.method private static blacklist loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 9
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .line 175
    const-string v0, " in "

    const-string v1, "Exception reading "

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 176
    .local v3, "is":Ljava/io/InputStream;
    :goto_e
    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_18

    goto :goto_e

    .line 179
    :cond_18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 180
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_21} :catch_22

    :cond_21
    return-object v2

    .line 184
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_22
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v4, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    .line 181
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_4a
    move-exception v3

    .line 182
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v4, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 188
    :goto_72
    return-object v2
.end method
