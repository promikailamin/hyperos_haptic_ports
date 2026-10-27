.class public Landroid/app/FilePinner;
.super Ljava/lang/Object;
.source "FilePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FilePinner$PinTask;
    }
.end annotation


# static fields
.field private static final blacklist MAX_LOCK_PAGES:I = 0x3200

.field private static final blacklist MAX_PROFILE_COUNT:I = 0xa

.field private static final blacklist PROFILE_DELAY:I = 0x1388

.field private static blacklist TAG:Ljava/lang/String;

.field private static blacklist enablePinAppFile:Z

.field private static blacklist mAppsToPin:[Ljava/lang/String;

.field private static blacklist mIsSelectedApp:Z

.field private static blacklist mPageProfileCount:I

.field private static blacklist mPinFileDone:Z

.field private static blacklist mfileCaheVecs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetFilesToPin(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;
    .registers 2

    invoke-static {p0, p1}, Landroid/app/FilePinner;->getFilesToPin(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smrecordHotPages(Ljava/util/ArrayList;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/FilePinner;->recordHotPages(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 29
    const-string v0, "FilePinner"

    sput-object v0, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    .line 30
    nop

    .line 31
    const-string v0, "persist.sys.pinappfile"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/FilePinner;->enablePinAppFile:Z

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/FilePinner;->mIsSelectedApp:Z

    .line 33
    const-string v0, " "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    .line 34
    sput-boolean v1, Landroid/app/FilePinner;->mPinFileDone:Z

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getFilesToPin(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pkgInfo"    # Landroid/app/LoadedApk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/app/LoadedApk;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "filesToPin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "baseApk":Ljava/lang/String;
    if-eqz v1, :cond_89

    .line 49
    const-string v2, "arm"

    .line 50
    .local v2, "arch":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 52
    invoke-static {v3}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "64"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_2f
    const/4 v3, 0x0

    .line 57
    .local v3, "baseOdex":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-lt v4, v5, :cond_63

    .line 59
    :try_start_36
    const-class v4, Ldalvik/system/DexFile;

    const-string v5, "getDexFileOutputPath"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 61
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_58} :catch_5a

    move-object v3, v5

    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_62

    .line 62
    :catch_5a
    move-exception v4

    .line 63
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string v6, "failed get base odex path"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_62
    goto :goto_84

    .line 66
    :cond_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/oat/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/base.odex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    :goto_84
    if-eqz v3, :cond_89

    .line 69
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v2    # "arch":Ljava/lang/String;
    .end local v3    # "baseOdex":Ljava/lang/String;
    :cond_89
    :try_start_89
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 76
    .local v2, "cl":Ljava/lang/ClassLoader;
    instance-of v3, v2, Ldalvik/system/BaseDexClassLoader;

    if-eqz v3, :cond_cf

    .line 77
    move-object v3, v2

    check-cast v3, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v3}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "clName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 79
    .local v4, "startIdx":I
    const/4 v5, 0x0

    .line 80
    .local v5, "endIdx":I
    :cond_9a
    :goto_9a
    const/4 v6, -0x1

    if-eq v4, v6, :cond_cf

    .line 81
    const-string v7, "dex file \""

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    move v4, v7

    .line 82
    const-string v7, "\","

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    move v5, v7

    .line 83
    if-eq v4, v6, :cond_9a

    if-eq v5, v6, :cond_9a

    .line 84
    add-int/lit8 v6, v4, 0xa

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "dexPath":Ljava/lang/String;
    const-string v7, "dex/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 86
    .local v7, "p":I
    if-ltz v7, :cond_ce

    .line 87
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 88
    .local v8, "odexPath":Ljava/lang/StringBuffer;
    const-string v9, "o"

    invoke-virtual {v8, v7, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_ce} :catch_d0

    .line 92
    .end local v6    # "dexPath":Ljava/lang/String;
    .end local v7    # "p":I
    .end local v8    # "odexPath":Ljava/lang/StringBuffer;
    :cond_ce
    goto :goto_9a

    .line 97
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "clName":Ljava/lang/String;
    .end local v4    # "startIdx":I
    .end local v5    # "endIdx":I
    :cond_cf
    goto :goto_d8

    .line 95
    :catch_d0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    const-string v4, "failed to find dex files"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_d8
    return-object v0
.end method

.method static blacklist handlePinAppFile(Landroid/app/Application;Landroid/app/LoadedApk;Landroid/content/res/Resources;)V
    .registers 10
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 195
    sget-boolean v0, Landroid/app/FilePinner;->enablePinAppFile:Z

    if-eqz v0, :cond_58

    sget-boolean v0, Landroid/app/FilePinner;->mIsSelectedApp:Z

    if-eqz v0, :cond_58

    sget-boolean v0, Landroid/app/FilePinner;->mPinFileDone:Z

    if-nez v0, :cond_58

    if-eqz p0, :cond_58

    if-nez p1, :cond_11

    goto :goto_58

    .line 200
    :cond_11
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 201
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_18

    .line 202
    return-void

    .line 214
    :cond_18
    sget-object v1, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    .line 215
    array-length v1, v1

    .line 216
    .local v1, "i":I
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_30

    .line 217
    sget-object v3, Landroid/app/FilePinner;->mAppsToPin:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1e

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 221
    :cond_30
    if-gez v1, :cond_35

    .line 222
    sput-boolean v2, Landroid/app/FilePinner;->mIsSelectedApp:Z

    .line 223
    return-void

    .line 225
    .end local v1    # "i":I
    :cond_35
    nop

    .line 230
    sget v1, Landroid/app/FilePinner;->mPageProfileCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_54

    .line 231
    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Landroid/app/FilePinner;->mPageProfileCount:I

    .line 232
    const/4 v4, 0x0

    .line 233
    .local v4, "goodToLock":Z
    if-ne v1, v2, :cond_46

    .line 234
    const/4 v4, 0x1

    .line 235
    sput-boolean v3, Landroid/app/FilePinner;->mPinFileDone:Z

    .line 237
    :cond_46
    new-instance v1, Landroid/app/FilePinner$PinTask;

    invoke-direct {v1, v0, p1, v4}, Landroid/app/FilePinner$PinTask;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;Z)V

    .line 238
    .local v1, "pinTask":Landroid/app/FilePinner$PinTask;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    .end local v1    # "pinTask":Landroid/app/FilePinner$PinTask;
    .end local v4    # "goodToLock":Z
    :cond_54
    return-void

    .line 226
    :cond_55
    sput-boolean v2, Landroid/app/FilePinner;->mIsSelectedApp:Z

    .line 227
    return-void

    .line 197
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_58
    :goto_58
    return-void
.end method

.method private static blacklist recordHotPages(Ljava/util/ArrayList;Z)V
    .registers 23
    .param p1, "goodToLock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 103
    .local p0, "filesToPin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Failed to close fd, error = "

    const/4 v0, 0x0

    .line 105
    .local v0, "totalLockSize":I
    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    .end local v0    # "totalLockSize":I
    .local v2, "totalLockSize":I
    .local v3, "i":I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_218

    .line 106
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v4, v0

    .line 108
    .local v4, "fd":Ljava/io/FileDescriptor;
    const/high16 v5, 0x80000

    .line 109
    .local v5, "LOCAL_O_CLOEXEC":I
    move-object/from16 v6, p0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 111
    .local v7, "pf":Ljava/lang/String;
    :try_start_1d
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v8, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v8

    or-int/2addr v0, v5

    sget v8, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {v7, v0, v8}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v15
    :try_end_29
    .catch Landroid/system/ErrnoException; {:try_start_1d .. :try_end_29} :catch_1a0
    .catchall {:try_start_1d .. :try_end_29} :catchall_199

    .line 115
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .local v15, "fd":Ljava/io/FileDescriptor;
    :try_start_29
    invoke-static {v15}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    move-object v4, v0

    .line 117
    .local v4, "sb":Landroid/system/StructStat;
    const-wide/16 v9, 0x0

    iget-wide v11, v4, Landroid/system/StructStat;->st_size:J

    sget v13, Landroid/system/OsConstants;->PROT_READ:I

    sget v14, Landroid/system/OsConstants;->MAP_PRIVATE:I

    const-wide/16 v16, 0x0

    invoke-static/range {v9 .. v17}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v8

    .line 119
    .local v8, "address":J
    iget-wide v10, v4, Landroid/system/StructStat;->st_size:J

    long-to-int v0, v10

    add-int/lit16 v0, v0, 0x1000

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000

    move v10, v0

    .line 120
    .local v10, "vecSize":I
    new-array v0, v10, [B

    move-object v11, v0

    .line 121
    .local v11, "vector":[B
    iget-wide v12, v4, Landroid/system/StructStat;->st_size:J

    invoke-static {v8, v9, v12, v13, v11}, Landroid/system/Os;->mincore(JJ[B)V

    .line 123
    sget-object v0, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_56
    .catch Landroid/system/ErrnoException; {:try_start_29 .. :try_end_56} :catch_192
    .catchall {:try_start_29 .. :try_end_56} :catchall_18a

    move-object v12, v0

    .line 124
    .local v12, "currentCacheVec":[B
    if-eqz v12, :cond_7a

    .line 125
    const/4 v0, 0x0

    .local v0, "pageIndex":I
    :goto_5a
    if-ge v0, v10, :cond_67

    .line 126
    :try_start_5c
    aget-byte v13, v12, v0

    aget-byte v14, v11, v0

    and-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v12, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 128
    .end local v0    # "pageIndex":I
    :cond_67
    sget-object v0, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Landroid/system/ErrnoException; {:try_start_5c .. :try_end_6c} :catch_74
    .catchall {:try_start_5c .. :try_end_6c} :catchall_6d

    goto :goto_7f

    .line 162
    .end local v4    # "sb":Landroid/system/StructStat;
    .end local v8    # "address":J
    .end local v10    # "vecSize":I
    .end local v11    # "vector":[B
    .end local v12    # "currentCacheVec":[B
    :catchall_6d
    move-exception v0

    move/from16 v17, v5

    move-object v4, v15

    move-object v5, v0

    goto/16 :goto_1f0

    .line 159
    :catch_74
    move-exception v0

    move/from16 v17, v5

    move-object v4, v15

    goto/16 :goto_1a5

    .line 130
    .restart local v4    # "sb":Landroid/system/StructStat;
    .restart local v8    # "address":J
    .restart local v10    # "vecSize":I
    .restart local v11    # "vector":[B
    .restart local v12    # "currentCacheVec":[B
    :cond_7a
    :try_start_7a
    sget-object v0, Landroid/app/FilePinner;->mfileCaheVecs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catch Landroid/system/ErrnoException; {:try_start_7a .. :try_end_7f} :catch_192
    .catchall {:try_start_7a .. :try_end_7f} :catchall_18a

    .line 133
    :goto_7f
    if-nez p1, :cond_c9

    .line 134
    :try_start_81
    iget-wide v13, v4, Landroid/system/StructStat;->st_size:J

    invoke-static {v8, v9, v13, v14}, Landroid/system/Os;->munmap(JJ)V
    :try_end_86
    .catch Landroid/system/ErrnoException; {:try_start_81 .. :try_end_86} :catch_c1
    .catchall {:try_start_81 .. :try_end_86} :catchall_b8

    .line 162
    invoke-virtual {v15}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 164
    :try_start_8c
    invoke-static {v15}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8f
    .catch Landroid/system/ErrnoException; {:try_start_8c .. :try_end_8f} :catch_92

    .line 167
    move/from16 v16, v2

    goto :goto_b4

    .line 165
    :catch_92
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 166
    .local v0, "eClose":Landroid/system/ErrnoException;
    sget-object v13, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v16, v2

    .end local v2    # "totalLockSize":I
    .local v16, "totalLockSize":I
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "eClose":Landroid/system/ErrnoException;
    goto :goto_b4

    .line 162
    .end local v16    # "totalLockSize":I
    .restart local v2    # "totalLockSize":I
    :cond_b2
    move/from16 v16, v2

    .line 105
    .end local v2    # "totalLockSize":I
    .end local v4    # "sb":Landroid/system/StructStat;
    .end local v5    # "LOCAL_O_CLOEXEC":I
    .end local v7    # "pf":Ljava/lang/String;
    .end local v8    # "address":J
    .end local v10    # "vecSize":I
    .end local v11    # "vector":[B
    .end local v12    # "currentCacheVec":[B
    .end local v15    # "fd":Ljava/io/FileDescriptor;
    .restart local v16    # "totalLockSize":I
    :cond_b4
    :goto_b4
    move/from16 v2, v16

    goto/16 :goto_1ea

    .line 162
    .end local v16    # "totalLockSize":I
    .restart local v2    # "totalLockSize":I
    .restart local v5    # "LOCAL_O_CLOEXEC":I
    .restart local v7    # "pf":Ljava/lang/String;
    .restart local v15    # "fd":Ljava/io/FileDescriptor;
    :catchall_b8
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    move-object v4, v15

    move-object v5, v0

    .end local v2    # "totalLockSize":I
    .restart local v16    # "totalLockSize":I
    goto/16 :goto_1f0

    .line 159
    .end local v16    # "totalLockSize":I
    .restart local v2    # "totalLockSize":I
    :catch_c1
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    move-object v4, v15

    .end local v2    # "totalLockSize":I
    .restart local v16    # "totalLockSize":I
    goto/16 :goto_1a5

    .line 138
    .end local v16    # "totalLockSize":I
    .restart local v2    # "totalLockSize":I
    .restart local v4    # "sb":Landroid/system/StructStat;
    .restart local v8    # "address":J
    .restart local v10    # "vecSize":I
    .restart local v11    # "vector":[B
    .restart local v12    # "currentCacheVec":[B
    :cond_c9
    move/from16 v16, v2

    .end local v2    # "totalLockSize":I
    .restart local v16    # "totalLockSize":I
    const/4 v0, 0x0

    .line 139
    .local v0, "pageCount":I
    const/4 v2, 0x0

    .line 140
    .local v2, "cachedSize":I
    const/4 v13, 0x0

    .line 141
    .local v13, "lockCount":I
    :goto_ce
    if-ge v0, v10, :cond_121

    .line 142
    :try_start_d0
    aget-byte v14, v12, v0
    :try_end_d2
    .catch Landroid/system/ErrnoException; {:try_start_d0 .. :try_end_d2} :catch_119
    .catchall {:try_start_d0 .. :try_end_d2} :catchall_110

    and-int/lit8 v14, v14, 0x1

    if-lez v14, :cond_df

    .line 143
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v18, v4

    move/from16 v17, v5

    move-wide/from16 v19, v8

    goto :goto_107

    .line 145
    :cond_df
    if-lez v13, :cond_101

    .line 146
    sub-int v14, v0, v13

    mul-int/lit16 v14, v14, 0x1000

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "sb":Landroid/system/StructStat;
    .end local v5    # "LOCAL_O_CLOEXEC":I
    .local v17, "LOCAL_O_CLOEXEC":I
    .local v18, "sb":Landroid/system/StructStat;
    int-to-long v4, v14

    add-long/2addr v4, v8

    mul-int/lit16 v14, v13, 0x1000

    move-wide/from16 v19, v8

    .end local v8    # "address":J
    .local v19, "address":J
    int-to-long v8, v14

    :try_start_f0
    invoke-static {v4, v5, v8, v9}, Landroid/system/Os;->mlock(JJ)V

    .line 147
    add-int/2addr v2, v13

    .line 148
    add-int v4, v16, v13

    .line 149
    .end local v16    # "totalLockSize":I
    .local v4, "totalLockSize":I
    const/4 v13, 0x0

    .line 150
    const/16 v5, 0x3200

    if-le v4, v5, :cond_fe

    .line 151
    move/from16 v16, v4

    goto :goto_127

    .line 150
    :cond_fe
    move/from16 v16, v4

    goto :goto_107

    .line 145
    .end local v17    # "LOCAL_O_CLOEXEC":I
    .end local v18    # "sb":Landroid/system/StructStat;
    .end local v19    # "address":J
    .local v4, "sb":Landroid/system/StructStat;
    .restart local v5    # "LOCAL_O_CLOEXEC":I
    .restart local v8    # "address":J
    .restart local v16    # "totalLockSize":I
    :cond_101
    move-object/from16 v18, v4

    move/from16 v17, v5

    move-wide/from16 v19, v8

    .line 155
    .end local v4    # "sb":Landroid/system/StructStat;
    .end local v5    # "LOCAL_O_CLOEXEC":I
    .end local v8    # "address":J
    .restart local v17    # "LOCAL_O_CLOEXEC":I
    .restart local v18    # "sb":Landroid/system/StructStat;
    .restart local v19    # "address":J
    :goto_107
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v17

    move-object/from16 v4, v18

    move-wide/from16 v8, v19

    goto :goto_ce

    .line 162
    .end local v0    # "pageCount":I
    .end local v2    # "cachedSize":I
    .end local v10    # "vecSize":I
    .end local v11    # "vector":[B
    .end local v12    # "currentCacheVec":[B
    .end local v13    # "lockCount":I
    .end local v17    # "LOCAL_O_CLOEXEC":I
    .end local v18    # "sb":Landroid/system/StructStat;
    .end local v19    # "address":J
    .restart local v5    # "LOCAL_O_CLOEXEC":I
    :catchall_110
    move-exception v0

    move/from16 v17, v5

    move-object v5, v0

    move-object v4, v15

    move/from16 v2, v16

    .end local v5    # "LOCAL_O_CLOEXEC":I
    .restart local v17    # "LOCAL_O_CLOEXEC":I
    goto/16 :goto_1f0

    .line 159
    .end local v17    # "LOCAL_O_CLOEXEC":I
    .restart local v5    # "LOCAL_O_CLOEXEC":I
    :catch_119
    move-exception v0

    move/from16 v17, v5

    move-object v4, v15

    move/from16 v2, v16

    .end local v5    # "LOCAL_O_CLOEXEC":I
    .restart local v17    # "LOCAL_O_CLOEXEC":I
    goto/16 :goto_1a5

    .line 141
    .end local v17    # "LOCAL_O_CLOEXEC":I
    .restart local v0    # "pageCount":I
    .restart local v2    # "cachedSize":I
    .restart local v4    # "sb":Landroid/system/StructStat;
    .restart local v5    # "LOCAL_O_CLOEXEC":I
    .restart local v8    # "address":J
    .restart local v10    # "vecSize":I
    .restart local v11    # "vector":[B
    .restart local v12    # "currentCacheVec":[B
    .restart local v13    # "lockCount":I
    :cond_121
    move-object/from16 v18, v4

    move/from16 v17, v5

    move-wide/from16 v19, v8

    .line 157
    .end local v4    # "sb":Landroid/system/StructStat;
    .end local v5    # "LOCAL_O_CLOEXEC":I
    .end local v8    # "address":J
    .restart local v17    # "LOCAL_O_CLOEXEC":I
    .restart local v18    # "sb":Landroid/system/StructStat;
    .restart local v19    # "address":J
    :goto_127
    mul-int/lit8 v4, v2, 0x64

    int-to-double v4, v4

    int-to-double v8, v10

    div-double/2addr v4, v8

    .line 158
    .local v4, "cachedPerc":D
    sget-object v8, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cached "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " with "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "%"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catch Landroid/system/ErrnoException; {:try_start_f0 .. :try_end_154} :catch_185
    .catchall {:try_start_f0 .. :try_end_154} :catchall_17e

    .line 162
    nop

    .end local v0    # "pageCount":I
    .end local v2    # "cachedSize":I
    .end local v4    # "cachedPerc":D
    .end local v10    # "vecSize":I
    .end local v12    # "currentCacheVec":[B
    .end local v13    # "lockCount":I
    .end local v18    # "sb":Landroid/system/StructStat;
    .end local v19    # "address":J
    invoke-virtual {v15}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 164
    :try_start_15b
    invoke-static {v15}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_15e
    .catch Landroid/system/ErrnoException; {:try_start_15b .. :try_end_15e} :catch_160

    .line 167
    :goto_15e
    goto/16 :goto_b4

    .line 165
    :catch_160
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 166
    .local v0, "eClose":Landroid/system/ErrnoException;
    sget-object v2, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "eClose":Landroid/system/ErrnoException;
    goto :goto_15e

    .line 162
    .end local v11    # "vector":[B
    :catchall_17e
    move-exception v0

    move-object v5, v0

    move-object v4, v15

    move/from16 v2, v16

    goto/16 :goto_1f0

    .line 159
    :catch_185
    move-exception v0

    move-object v4, v15

    move/from16 v2, v16

    goto :goto_1a5

    .line 162
    .end local v16    # "totalLockSize":I
    .end local v17    # "LOCAL_O_CLOEXEC":I
    .local v2, "totalLockSize":I
    .restart local v5    # "LOCAL_O_CLOEXEC":I
    :catchall_18a
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    move-object v5, v0

    move-object v4, v15

    .end local v2    # "totalLockSize":I
    .end local v5    # "LOCAL_O_CLOEXEC":I
    .restart local v16    # "totalLockSize":I
    .restart local v17    # "LOCAL_O_CLOEXEC":I
    goto :goto_1f0

    .line 159
    .end local v16    # "totalLockSize":I
    .end local v17    # "LOCAL_O_CLOEXEC":I
    .restart local v2    # "totalLockSize":I
    .restart local v5    # "LOCAL_O_CLOEXEC":I
    :catch_192
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    move-object v4, v15

    .end local v2    # "totalLockSize":I
    .end local v5    # "LOCAL_O_CLOEXEC":I
    .restart local v16    # "totalLockSize":I
    .restart local v17    # "LOCAL_O_CLOEXEC":I
    goto :goto_1a5

    .line 162
    .end local v15    # "fd":Ljava/io/FileDescriptor;
    .end local v16    # "totalLockSize":I
    .end local v17    # "LOCAL_O_CLOEXEC":I
    .restart local v2    # "totalLockSize":I
    .local v4, "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "LOCAL_O_CLOEXEC":I
    :catchall_199
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    move-object v5, v0

    .end local v2    # "totalLockSize":I
    .end local v5    # "LOCAL_O_CLOEXEC":I
    .restart local v16    # "totalLockSize":I
    .restart local v17    # "LOCAL_O_CLOEXEC":I
    goto :goto_1f0

    .line 159
    .end local v16    # "totalLockSize":I
    .end local v17    # "LOCAL_O_CLOEXEC":I
    .restart local v2    # "totalLockSize":I
    .restart local v5    # "LOCAL_O_CLOEXEC":I
    :catch_1a0
    move-exception v0

    move/from16 v16, v2

    move/from16 v17, v5

    .line 160
    .end local v5    # "LOCAL_O_CLOEXEC":I
    .local v0, "e":Landroid/system/ErrnoException;
    .restart local v17    # "LOCAL_O_CLOEXEC":I
    :goto_1a5
    :try_start_1a5
    sget-object v5, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not pin file with error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c1
    .catchall {:try_start_1a5 .. :try_end_1c1} :catchall_1ee

    .line 162
    nop

    .end local v0    # "e":Landroid/system/ErrnoException;
    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 164
    :try_start_1c8
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1cb
    .catch Landroid/system/ErrnoException; {:try_start_1c8 .. :try_end_1cb} :catch_1cc

    .line 167
    :goto_1cb
    goto :goto_1ea

    .line 165
    :catch_1cc
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 166
    .local v0, "eClose":Landroid/system/ErrnoException;
    sget-object v5, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "eClose":Landroid/system/ErrnoException;
    goto :goto_1cb

    .line 105
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "pf":Ljava/lang/String;
    .end local v17    # "LOCAL_O_CLOEXEC":I
    :cond_1ea
    :goto_1ea
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 162
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v7    # "pf":Ljava/lang/String;
    .restart local v17    # "LOCAL_O_CLOEXEC":I
    :catchall_1ee
    move-exception v0

    move-object v5, v0

    :goto_1f0
    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_217

    .line 164
    :try_start_1f6
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1f9
    .catch Landroid/system/ErrnoException; {:try_start_1f6 .. :try_end_1f9} :catch_1fa

    .line 167
    goto :goto_217

    .line 165
    :catch_1fa
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 166
    .restart local v0    # "eClose":Landroid/system/ErrnoException;
    sget-object v8, Landroid/app/FilePinner;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0    # "eClose":Landroid/system/ErrnoException;
    :cond_217
    :goto_217
    throw v5

    .line 171
    .end local v3    # "i":I
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "pf":Ljava/lang/String;
    .end local v17    # "LOCAL_O_CLOEXEC":I
    :cond_218
    return-void
.end method
