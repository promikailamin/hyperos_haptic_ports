.class public Lcom/android/server/pm/dex/ArtStatsLogUtils;
.super Ljava/lang/Object;
.source "ArtStatsLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;,
        Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;
    }
.end annotation


# static fields
.field private static final ART_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK:I = 0xe

.field private static final ART_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK:I = 0xf

.field private static final ART_COMPILATION_REASON_INSTALL_BULK_DOWNGRADED:I = 0xf

.field private static final ART_COMPILATION_REASON_INSTALL_BULK_SECONDARY:I = 0xe

.field private static final ART_COMPILATION_REASON_INSTALL_BULK_SECONDARY_DOWNGRADED:I = 0x10

.field private static final COMPILATION_REASON_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPILE_FILTER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ISA_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_DEX_METADATA:Ljava/lang/String; = "primary.prof"

.field private static final STATUS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final VDEX_DEX_METADATA:Ljava/lang/String; = "primary.vdex"


# direct methods
.method static bridge synthetic -$$Nest$sfgetCOMPILATION_REASON_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->COMPILATION_REASON_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetCOMPILE_FILTER_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->COMPILE_FILTER_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetISA_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->ISA_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSTATUS_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->STATUS_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 18

    .line 45
    const-class v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->COMPILATION_REASON_MAP:Ljava/util/Map;

    .line 64
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 77
    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 76
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 79
    const/16 v11, 0xf

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 78
    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/16 v14, 0x8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 81
    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 80
    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 v15, 0x9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v16, 0xa

    move-object/from16 v17, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    nop

    .line 87
    nop

    .line 86
    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    nop

    .line 90
    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    nop

    .line 91
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->COMPILE_FILTER_MAP:Ljava/util/Map;

    .line 98
    const-string v2, "error"

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v2, "unknown"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "assume-verified"

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v2, "extract"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v2, "verify"

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v2, "quicken"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v2, "space-profile"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v2, "space"

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v2, "speed-profile"

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v9, "speed"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "everything-profile"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "everything"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v1, "run-from-apk"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    nop

    .line 125
    nop

    .line 124
    const-string/jumbo v1, "run-from-apk-fallback"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    nop

    .line 127
    nop

    .line 126
    const-string/jumbo v1, "run-from-vdex-fallback"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->ISA_MAP:Ljava/util/Map;

    .line 133
    const-string v1, "arm"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "arm64"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "x86"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v1, "x86_64"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v1, "mips"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v1, "mips64"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    nop

    .line 306
    nop

    .line 307
    nop

    .line 308
    nop

    .line 309
    nop

    .line 310
    nop

    .line 311
    nop

    .line 312
    nop

    .line 313
    nop

    .line 314
    nop

    .line 315
    nop

    .line 316
    nop

    .line 317
    nop

    .line 306
    move-object/from16 v2, v17

    move-object v3, v13

    move-object v4, v13

    move-object v5, v6

    move-object v7, v8

    move-object v9, v10

    move-object v11, v12

    invoke-static/range {v2 .. v13}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/dex/ArtStatsLogUtils;->STATUS_MAP:Ljava/util/Map;

    .line 305
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findFileName(Landroid/util/jar/StrictJarFile;Ljava/lang/String;)Z
    .registers 5
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 266
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 268
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 269
    const/4 v2, 0x1

    return v2

    .line 271
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1c
    goto :goto_4

    .line 272
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public static getApkType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "baseApkPath"    # Ljava/lang/String;
    .param p2, "splitApkPaths"    # [Ljava/lang/String;

    .line 187
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_8
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/dex/ArtStatsLogUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/dex/ArtStatsLogUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 190
    const/4 v0, 0x2

    return v0

    .line 192
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private static getDexBytes(Ljava/lang/String;)J
    .registers 10
    .param p0, "apkPath"    # Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "jarFile":Landroid/util/jar/StrictJarFile;
    const-wide/16 v1, 0x0

    .line 200
    .local v1, "dexBytes":J
    :try_start_3
    new-instance v3, Landroid/util/jar/StrictJarFile;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v4}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v0, v3

    .line 203
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 204
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    const-string v4, "classes(\\d)*[.]dex"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 205
    .local v4, "p":Ljava/util/regex/Pattern;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 206
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 207
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 208
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 209
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 210
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_37} :catch_43
    .catchall {:try_start_3 .. :try_end_37} :catchall_41

    add-long/2addr v1, v7

    .line 212
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    :cond_38
    goto :goto_1a

    .line 213
    :cond_39
    nop

    .line 219
    nop

    .line 220
    :try_start_3b
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 223
    goto :goto_40

    .line 222
    :catch_3f
    move-exception v6

    .line 213
    :goto_40
    return-wide v1

    .line 218
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :catchall_41
    move-exception v3

    goto :goto_68

    .line 214
    :catch_43
    move-exception v3

    .line 215
    .local v3, "ignore":Ljava/io/IOException;
    :try_start_44
    sget-object v4, Lcom/android/server/pm/dex/ArtStatsLogUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when parsing APK "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_41

    .line 216
    const-wide/16 v4, -0x1

    .line 219
    if-eqz v0, :cond_66

    .line 220
    :try_start_60
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_66

    .line 222
    :catch_64
    move-exception v6

    goto :goto_67

    .line 223
    :cond_66
    :goto_66
    nop

    .line 216
    :goto_67
    return-wide v4

    .line 219
    .end local v3    # "ignore":Ljava/io/IOException;
    :goto_68
    if-eqz v0, :cond_70

    .line 220
    :try_start_6a
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_70

    .line 222
    :catch_6e
    move-exception v4

    goto :goto_71

    .line 223
    :cond_70
    :goto_70
    nop

    .line 224
    :goto_71
    throw v3
.end method

.method private static getDexMetadataType(Ljava/lang/String;)I
    .registers 6
    .param p0, "dexMetadataPath"    # Ljava/lang/String;

    .line 228
    if-nez p0, :cond_4

    .line 229
    const/4 v0, 0x4

    return v0

    .line 231
    :cond_4
    const/4 v0, 0x0

    .line 233
    .local v0, "jarFile":Landroid/util/jar/StrictJarFile;
    :try_start_5
    new-instance v1, Landroid/util/jar/StrictJarFile;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v0, v1

    .line 236
    const-string/jumbo v1, "primary.prof"

    invoke-static {v0, v1}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->findFileName(Landroid/util/jar/StrictJarFile;Ljava/lang/String;)Z

    move-result v1

    .line 237
    .local v1, "hasProfile":Z
    const-string/jumbo v3, "primary.vdex"

    invoke-static {v0, v3}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->findFileName(Landroid/util/jar/StrictJarFile;Ljava/lang/String;)Z

    move-result v3
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_44
    .catchall {:try_start_5 .. :try_end_1a} :catchall_42

    .line 238
    .local v3, "hasVdex":Z
    if-eqz v1, :cond_26

    if-eqz v3, :cond_26

    .line 239
    const/4 v2, 0x3

    .line 256
    nop

    .line 257
    :try_start_20
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 260
    goto :goto_25

    .line 259
    :catch_24
    move-exception v4

    .line 239
    :goto_25
    return v2

    .line 241
    :cond_26
    if-eqz v1, :cond_30

    .line 242
    const/4 v2, 0x1

    .line 256
    nop

    .line 257
    :try_start_2a
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 260
    goto :goto_2f

    .line 259
    :catch_2e
    move-exception v4

    .line 242
    :goto_2f
    return v2

    .line 244
    :cond_30
    if-eqz v3, :cond_3a

    .line 245
    const/4 v2, 0x2

    .line 256
    nop

    .line 257
    :try_start_34
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    .line 260
    goto :goto_39

    .line 259
    :catch_38
    move-exception v4

    .line 245
    :goto_39
    return v2

    .line 248
    :cond_3a
    nop

    .line 256
    nop

    .line 257
    :try_start_3c
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 260
    goto :goto_41

    .line 259
    :catch_40
    move-exception v4

    .line 248
    :goto_41
    return v2

    .line 255
    .end local v1    # "hasProfile":Z
    .end local v3    # "hasVdex":Z
    :catchall_42
    move-exception v1

    goto :goto_68

    .line 251
    :catch_44
    move-exception v1

    .line 252
    .local v1, "ignore":Ljava/io/IOException;
    :try_start_45
    sget-object v2, Lcom/android/server/pm/dex/ArtStatsLogUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when parsing dex metadata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_42

    .line 253
    const/4 v2, 0x5

    .line 256
    if-eqz v0, :cond_66

    .line 257
    :try_start_60
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_66

    .line 259
    :catch_64
    move-exception v3

    goto :goto_67

    .line 260
    :cond_66
    :goto_66
    nop

    .line 253
    :goto_67
    return v2

    .line 256
    .end local v1    # "ignore":Ljava/io/IOException;
    :goto_68
    if-eqz v0, :cond_70

    .line 257
    :try_start_6a
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_70

    .line 259
    :catch_6e
    move-exception v2

    goto :goto_71

    .line 260
    :cond_70
    :goto_70
    nop

    .line 261
    :goto_71
    throw v1
.end method

.method static synthetic lambda$getApkType$0(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "p"    # Ljava/lang/String;

    .line 189
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static writeStatsLog(Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;JLjava/lang/String;IJLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 27
    .param p0, "logger"    # Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;
    .param p1, "sessionId"    # J
    .param p3, "compilerFilter"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "compileTime"    # J
    .param p7, "dexMetadataPath"    # Ljava/lang/String;
    .param p8, "compilationReason"    # I
    .param p9, "result"    # I
    .param p10, "apkType"    # I
    .param p11, "isa"    # Ljava/lang/String;
    .param p12, "apkPath"    # Ljava/lang/String;

    .line 153
    invoke-static/range {p7 .. p7}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->getDexMetadataType(Ljava/lang/String;)I

    move-result v12

    .line 154
    .local v12, "dexMetadataType":I
    move/from16 v13, p9

    int-to-long v7, v13

    const/16 v6, 0xa

    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p4

    move/from16 v4, p8

    move-object/from16 v5, p3

    move v9, v12

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;->write(JIILjava/lang/String;IJIILjava/lang/String;)V

    .line 164
    nop

    .line 170
    invoke-static/range {p12 .. p12}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->getDexBytes(Ljava/lang/String;)J

    move-result-wide v7

    .line 164
    const/16 v6, 0xb

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;->write(JIILjava/lang/String;IJIILjava/lang/String;)V

    .line 174
    const/16 v6, 0xc

    move-wide/from16 v7, p5

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;->write(JIILjava/lang/String;IJIILjava/lang/String;)V

    .line 184
    return-void
.end method
