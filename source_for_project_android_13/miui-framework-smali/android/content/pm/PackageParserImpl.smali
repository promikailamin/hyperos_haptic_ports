.class public Landroid/content/pm/PackageParserImpl;
.super Ljava/lang/Object;
.source "PackageParserImpl.java"

# interfaces
.implements Landroid/content/pm/PackageParserStub;


# static fields
.field private static blacklist Files:[Ljava/lang/String; = null

.field private static final blacklist IS_DEBUG_ON:Z = true

.field private static final blacklist MIUI:Ljava/lang/String; = "miui"

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParserImpl"

.field private static blacklist WCG_WHITE_LIST:[Ljava/lang/String; = null

.field private static final blacklist XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static blacklist sMiuiPersistentEnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParserImpl;->sMiuiPersistentEnableList:Ljava/util/List;

    .line 26
    const-string v1, ".art"

    const-string v2, ".odex"

    const-string v3, ".vdex"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/content/pm/PackageParserImpl;->Files:[Ljava/lang/String;

    .line 29
    const-string v1, "com.miui.rom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Landroid/content/pm/PackageParserImpl;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.miui.daemon"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Landroid/content/pm/PackageParserImpl;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.miui.voicetrigger"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Landroid/content/pm/PackageParserImpl;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.miui.face"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Landroid/content/pm/PackageParserImpl;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.xiaomi.mircs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Landroid/content/pm/PackageParserImpl;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.xiaomi.xmsf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Landroid/content/pm/PackageParserImpl;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.xiaomi.finddevice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_4d

    .line 40
    sget-object v0, Landroid/content/pm/PackageParserImpl;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.miui.contentcatcher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_4d
    invoke-static {}, Lmiui/os/UserHandleEx;->myUserId()I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_63

    .line 45
    sget-object v0, Landroid/content/pm/PackageParserImpl;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.android.nfc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Landroid/content/pm/PackageParserImpl;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.goodix.fingerprint"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_63
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParserImpl;->WCG_WHITE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist checkEnablePackagePersistent(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 67
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 68
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 69
    return-void

    .line 71
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 72
    :cond_21
    sget-object v1, Landroid/content/pm/PackageParserImpl;->sMiuiPersistentEnableList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denied, Skip package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to be persistent!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageParserImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 77
    :cond_4d
    return-void
.end method

.method blacklist getCodePath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDexFileSize(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "codePath"    # Ljava/lang/String;

    .line 118
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 119
    .local v0, "index":I
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageParserImpl;->getCodePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "newCodePath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 121
    .local v2, "result":Ljava/lang/String;
    const-string v3, "/oat/arm64/"

    .line 122
    .local v3, "arm64":Ljava/lang/String;
    const-string v4, "/oat/arm/"

    .line 123
    .local v4, "arm32":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageParserImpl;->getPkgName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "pkgName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Landroid/content/pm/PackageParserImpl;->getOdexFileSize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_76

    .line 126
    :cond_45
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Landroid/content/pm/PackageParserImpl;->getOdexFileSize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    :cond_76
    :goto_76
    return-object v2
.end method

.method public blacklist getOdexFileSize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 83
    const-string v0, "IO error happens in close randomAccessFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    sget-object v3, Landroid/content/pm/PackageParserImpl;->Files:[Ljava/lang/String;

    array-length v3, v3

    const-string v4, "PackageParserImpl"

    if-ge v2, v3, :cond_ab

    .line 85
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PackageParserImpl;->Files:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v3, "myFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PackageParserImpl;->Files:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "mfileName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const/4 v6, 0x0

    .line 93
    .local v6, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_51
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v7, v3, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v7

    .line 94
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    .line 95
    .local v7, "value":J
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    const-string v9, "Kb "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_68} :catch_74
    .catchall {:try_start_51 .. :try_end_68} :catchall_72

    .line 100
    nop

    .line 102
    .end local v7    # "value":J
    :try_start_69
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 105
    :goto_6c
    goto :goto_a7

    .line 103
    :catch_6d
    move-exception v7

    .line 104
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Ljava/lang/Exception;
    goto :goto_6c

    .line 100
    :catchall_72
    move-exception v7

    goto :goto_9c

    .line 97
    :catch_74
    move-exception v7

    .line 98
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_75
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO error happens  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_75 .. :try_end_95} :catchall_72

    .line 100
    nop

    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_a7

    .line 102
    :try_start_98
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_6d

    goto :goto_6c

    .line 100
    :goto_9c
    if-eqz v6, :cond_a6

    .line 102
    :try_start_9e
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_a2

    .line 105
    goto :goto_a6

    .line 103
    :catch_a2
    move-exception v8

    .line 104
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_a6
    :goto_a6
    throw v7

    .line 84
    .end local v3    # "myFile":Ljava/io/File;
    .end local v5    # "mfileName":Ljava/lang/String;
    .end local v6    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_a7
    :goto_a7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 111
    .end local v2    # "i":I
    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump dex file,file message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ca

    const-string v0, "no data"

    goto :goto_ce

    :cond_ca
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ce
    return-object v0
.end method

.method blacklist getPkgName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 139
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, "index2":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist isWcgWhiteList(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 53
    sget-object v0, Landroid/content/pm/PackageParserImpl;->WCG_WHITE_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 54
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 55
    const/4 v0, 0x1

    return v0

    .line 53
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 58
    :cond_14
    return v2
.end method
