.class public Lcom/android/internal/pm/pkg/component/AconfigFlags;
.super Ljava/lang/Object;
.source "AconfigFlags.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AconfigFlags"

.field private static final blacklist OVERRIDE_PREFIX:Ljava/lang/String; = "device_config_overrides/"

.field private static final blacklist STAGED_PREFIX:Ljava/lang/String; = "staged/"


# instance fields
.field private final blacklist mAconfigPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/flagging/AconfigPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlagValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 8

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mAconfigPackages:Ljava/util/Map;

    .line 71
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->manifestFlagging()Z

    move-result v0

    if-nez v0, :cond_18

    .line 75
    return-void

    .line 78
    :cond_18
    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->useNewStorage()Z

    move-result v0

    const-string v1, "AconfigFlags"

    if-eqz v0, :cond_27

    .line 79
    const-string v0, "Using new flag storage"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9c

    .line 81
    :cond_27
    const-string v0, "Using OLD proto flag storage"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_39

    invoke-static {}, Landroid/aconfig/DeviceProtos;->parsedFlagsProtoPaths()Ljava/util/List;

    move-result-object v0

    goto :goto_3f

    .line 84
    :cond_39
    sget-object v0, Landroid/aconfig/DeviceProtos;->PATHS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 85
    :goto_3f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_43
    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_61

    .line 88
    goto :goto_43

    .line 90
    :cond_61
    :try_start_61
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_66} :catch_7b

    .line 91
    :try_start_66
    invoke-virtual {v5}, Ljava/io/FileInputStream;->readAllBytes()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->loadAconfigDefaultValues([B)V
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_71

    .line 92
    :try_start_6d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_7b

    .line 94
    goto :goto_92

    .line 90
    :catchall_71
    move-exception v4

    :try_start_72
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_7a

    :catchall_76
    move-exception v5

    :try_start_77
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7a
    throw v4
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7b} :catch_7b

    .line 92
    :catch_7b
    move-exception v4

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read Aconfig values from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :goto_92
    goto :goto_43

    .line 96
    :cond_93
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne v0, v2, :cond_9c

    .line 99
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->loadServerOverrides()V

    .line 102
    :cond_9c
    :goto_9c
    return-void
.end method

.method private blacklist getFlagValueFromNewStorage(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 9

    .line 242
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 243
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 252
    return-object p1

    .line 255
    :cond_19
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 256
    const-string v1, "AconfigFlags"

    const/4 v2, 0x0

    if-gez v0, :cond_3b

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse package name from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-object v2

    .line 260
    :cond_3b
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 261
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    nop

    .line 263
    iget-object v5, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mAconfigPackages:Ljava/util/Map;

    new-instance v6, Lcom/android/internal/pm/pkg/component/AconfigFlags$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/pm/pkg/component/AconfigFlags$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/flagging/AconfigPackage;

    .line 271
    if-eqz v4, :cond_88

    .line 276
    :try_start_56
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->publicInternalReadApi()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 277
    invoke-virtual {v4, v0, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValueInternal(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v2, p1

    goto :goto_6f

    .line 279
    :cond_66
    invoke-virtual {v4, v0, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6e} :catch_70

    move-object v2, p1

    .line 284
    :goto_6f
    goto :goto_88

    .line 281
    :catch_70
    move-exception v0

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read Aconfig flag value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    return-object v2

    .line 289
    :cond_88
    :goto_88
    return-object v2
.end method

.method static synthetic blacklist lambda$getFlagValueFromNewStorage$0(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;
    .registers 4

    .line 265
    :try_start_0
    invoke-static {p0}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 266
    :catch_5
    move-exception v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load aconfig package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AconfigFlags"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist loadAconfigDefaultValues([B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-static {p1}, Landroid/aconfig/nano/Aconfig$parsed_flags;->parseFrom([B)Landroid/aconfig/nano/Aconfig$parsed_flags;

    move-result-object p1

    .line 214
    iget-object p1, p1, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_3b

    aget-object v3, p1, v2

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    iget v3, v3, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2e

    goto :goto_2f

    :cond_2e
    move v5, v1

    .line 217
    :goto_2f
    iget-object v3, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 219
    :cond_3b
    return-void
.end method

.method private blacklist loadServerOverrides()V
    .registers 13

    .line 129
    const-string/jumbo v0, "staged/"

    const-string v1, "device_config_overrides/"

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "settings_config.xml"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_109

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_20

    goto/16 :goto_109

    .line 134
    :cond_20
    :try_start_20
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_100
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_25} :catch_100

    .line 135
    :try_start_25
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 136
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_f2

    const-string/jumbo v5, "settings"

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 137
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 138
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    .line 140
    :cond_46
    :goto_46
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_f2

    if-ne v8, v6, :cond_55

    .line 141
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v7, :cond_f2

    .line 142
    :cond_55
    if-eq v8, v6, :cond_46

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5b

    .line 143
    goto :goto_46

    .line 145
    :cond_5b
    const-string/jumbo v8, "setting"

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_69

    .line 146
    goto :goto_46

    .line 148
    :cond_69
    const-string v8, "name"

    const/4 v9, 0x0

    invoke-interface {v2, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 149
    const-string/jumbo v10, "value"

    invoke-interface {v2, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    if-eqz v8, :cond_46

    if-nez v9, :cond_7c

    .line 151
    goto :goto_46

    .line 154
    :cond_7c
    const-string v10, "false"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8e

    const-string/jumbo v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8e

    .line 155
    goto :goto_46

    .line 157
    :cond_8e
    const-string v10, "/"

    .line 158
    nop

    .line 159
    nop

    .line 160
    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a6

    .line 161
    nop

    .line 162
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 163
    const-string v10, ":"

    .line 164
    const/16 v11, 0x14

    goto :goto_bb

    .line 165
    :cond_a6
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ba

    .line 166
    nop

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 168
    const-string v10, "*"

    .line 169
    const/16 v11, 0xa

    goto :goto_bb

    .line 165
    :cond_ba
    move v11, v3

    .line 171
    :goto_bb
    invoke-static {v8, v10}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->parseFlagPackageAndName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 172
    if-nez v8, :cond_c2

    .line 173
    goto :goto_46

    .line 177
    :cond_c2
    iget-object v10, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_cc

    .line 178
    goto/16 :goto_46

    .line 185
    :cond_cc
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 186
    if-eqz v10, :cond_dc

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v10, v11, :cond_dc

    .line 193
    goto/16 :goto_46

    .line 195
    :cond_dc
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v10, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f0
    .catchall {:try_start_25 .. :try_end_f0} :catchall_f6

    .line 197
    goto/16 :goto_46

    .line 199
    :cond_f2
    :try_start_f2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_100
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f2 .. :try_end_f5} :catch_100

    .line 201
    goto :goto_108

    .line 134
    :catchall_f6
    move-exception v0

    :try_start_f7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fb

    goto :goto_ff

    :catchall_fb
    move-exception v1

    :try_start_fc
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ff
    throw v0
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_100} :catch_100
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fc .. :try_end_100} :catch_100

    .line 199
    :catch_100
    move-exception v0

    .line 200
    const-string v1, "AconfigFlags"

    const-string v2, "Failed to read Aconfig values from settings_config.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :goto_108
    return-void

    .line 132
    :cond_109
    :goto_109
    return-void
.end method

.method private static blacklist parseFlagPackageAndName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 205
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 206
    if-gez p1, :cond_8

    .line 207
    const/4 p0, 0x0

    return-object p0

    .line 209
    :cond_8
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist useNewStorage()Z
    .registers 1

    .line 105
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->newStoragePublicApi()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->useNewAconfigStorage()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 106
    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 105
    :goto_19
    return v0
.end method


# virtual methods
.method public blacklist addFlagValuesForTesting(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 371
    return-void
.end method

.method public blacklist getFlagValue(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 228
    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->useNewStorage()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 229
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getFlagValueFromNewStorage(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 231
    :cond_b
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 235
    return-object p1
.end method

.method public blacklist skip(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Z)Z
    .registers 9

    .line 343
    invoke-virtual {p0, p2}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getFlagValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 344
    nop

    .line 345
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 346
    nop

    .line 347
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move v3, v1

    goto :goto_11

    .line 345
    :cond_10
    move v3, v2

    .line 349
    :goto_11
    nop

    .line 350
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, p3, :cond_19

    .line 352
    goto :goto_1a

    .line 350
    :cond_19
    move v1, v2

    .line 354
    :goto_1a
    if-eqz p1, :cond_2c

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->includeFeatureFlagsInPackageCacher()Z

    move-result p3

    if-eqz p3, :cond_2c

    .line 355
    if-eqz v3, :cond_29

    .line 356
    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_2c

    .line 358
    :cond_29
    invoke-interface {p1, p2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 361
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 4

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result p1

    return p1
.end method

.method public blacklist skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;Z)Z
    .registers 7

    .line 314
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->manifestFlagging()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 315
    return v1

    .line 317
    :cond_8
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "featureFlag"

    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    if-nez v0, :cond_19

    if-eqz p3, :cond_19

    .line 320
    const/4 p3, 0x0

    invoke-interface {p2, p3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_19
    if-nez v0, :cond_1c

    .line 323
    return v1

    .line 325
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object p2

    .line 326
    nop

    .line 327
    const-string p3, "!"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_33

    .line 328
    nop

    .line 329
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object p2

    .line 331
    :cond_33
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skip(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
