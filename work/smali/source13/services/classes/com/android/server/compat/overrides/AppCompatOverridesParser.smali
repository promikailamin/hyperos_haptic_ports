.class final Lcom/android/server/compat/overrides/AppCompatOverridesParser;
.super Ljava/lang/Object;
.source "AppCompatOverridesParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;
    }
.end annotation


# static fields
.field private static final BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

.field static final FLAG_OWNED_CHANGE_IDS:Ljava/lang/String; = "owned_change_ids"

.field static final FLAG_REMOVE_OVERRIDES:Ljava/lang/String; = "remove_overrides"

.field private static final TAG:Ljava/lang/String; = "AppCompatOverridesParser"

.field private static final WILDCARD_NO_OWNED_CHANGE_IDS_WARNING:Ljava/lang/String; = "Wildcard can\'t be used in \'remove_overrides\' flag with an empty owned_change_ids\' flag"

.field private static final WILDCARD_SYMBOL:Ljava/lang/String; = "*"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    nop

    .line 68
    const-string/jumbo v0, "true|false"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 78
    return-void
.end method

.method private static extractSignatureFromConfig(Ljava/lang/String;)Landroid/util/Pair;
    .registers 5
    .param p0, "configStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    const-string/jumbo v0, "~"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 283
    .local v0, "signatureAndConfig":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 285
    const-string v1, ""

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 288
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_3a

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only one signature per config is supported. Config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppCompatOverridesParser"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, 0x0

    return-object v1

    .line 293
    :cond_3a
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$parseRemoveOverrides$0(Ljava/lang/String;)Ljava/util/Set;
    .registers 2
    .param p0, "k"    # Ljava/lang/String;

    .line 142
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method static parseOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;
    .registers 9
    .param p0, "configStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 168
    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 169
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_44

    aget-object v4, v1, v3

    .line 171
    .local v4, "changeIdStr":Ljava/lang/String;
    :try_start_1c
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_27} :catch_28

    .line 176
    goto :goto_41

    .line 172
    :catch_28
    move-exception v5

    .line 173
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid change ID in \'owned_change_ids\' flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppCompatOverridesParser"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v4    # "changeIdStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 178
    :cond_44
    return-object v0
.end method

.method private verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .line 305
    const-string v0, "AppCompatOverridesParser"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 307
    invoke-static {p2}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 306
    invoke-virtual {v2, p1, v4, v3}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_19

    :cond_17
    move v3, v1

    goto :goto_1a

    :cond_19
    :goto_19
    nop

    :goto_1a
    move v2, v3

    .line 309
    .local v2, "signatureValid":Z
    if-nez v2, :cond_37

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not have expected signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_37} :catch_38

    .line 312
    :cond_37
    return v2

    .line 313
    .end local v2    # "signatureValid":Z
    :catch_38
    move-exception v2

    .line 314
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to verify signature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    return v1
.end method


# virtual methods
.method parsePackageOverrides(Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)Ljava/util/Map;
    .registers 29
    .param p1, "configStr"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/compat/PackageOverride;",
            ">;"
        }
    .end annotation

    .line 200
    .local p5, "changeIdsToSkip":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 203
    :cond_b
    new-instance v0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;-><init>(J)V

    move-object v3, v0

    .line 204
    .local v3, "comparator":Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v4, v0

    .line 206
    .local v4, "overridesToAdd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->extractSignatureFromConfig(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 207
    .local v5, "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_24

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 210
    :cond_24
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 211
    .local v6, "signature":Ljava/lang/String;
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 213
    .local v7, "overridesConfig":Ljava/lang/String;
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-direct {v8, v9, v6}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 214
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 217
    :cond_3d
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v13, 0x0

    :goto_45
    if-ge v13, v11, :cond_17e

    aget-object v14, v10, v13

    .line 218
    .local v14, "overrideEntryString":Ljava/lang/String;
    const-string v0, ":"

    const/4 v15, 0x4

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 219
    .local v12, "changeIdAndVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "AppCompatOverridesParser"

    if-eq v0, v15, :cond_78

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid change override entry: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    move-object/from16 v19, v5

    move-object/from16 v21, v6

    goto/16 :goto_174

    .line 225
    :cond_78
    const/4 v2, 0x0

    :try_start_79
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_83} :catch_158

    .line 229
    .local v15, "changeId":J
    nop

    .line 231
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v2, p5

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 232
    move-object/from16 v19, v5

    move-object/from16 v21, v6

    goto/16 :goto_174

    .line 235
    :cond_96
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 236
    .local v17, "minVersionCodeStr":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 238
    .local v18, "maxVersionCodeStr":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 239
    .local v2, "enabledStr":Ljava/lang/String;
    sget-object v0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_d8

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    .end local v5    # "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v19, "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Invalid enabled string in override entry: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object/from16 v21, v6

    goto/16 :goto_174

    .line 243
    .end local v19    # "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d8
    move-object/from16 v19, v5

    .end local v5    # "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 244
    .local v5, "enabled":Z
    new-instance v0, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v0}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    move-object/from16 v20, v2

    .end local v2    # "enabledStr":Ljava/lang/String;
    .local v20, "enabledStr":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 247
    .local v2, "overrideBuilder":Landroid/app/compat/PackageOverride$Builder;
    :try_start_e9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_ed
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_ed} :catch_13c

    if-nez v0, :cond_fb

    .line 248
    move/from16 v22, v5

    move-object/from16 v21, v6

    .end local v5    # "enabled":Z
    .end local v6    # "signature":Ljava/lang/String;
    .local v21, "signature":Ljava/lang/String;
    .local v22, "enabled":Z
    :try_start_f3
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/app/compat/PackageOverride$Builder;->setMinVersionCode(J)Landroid/app/compat/PackageOverride$Builder;

    goto :goto_ff

    .line 247
    .end local v21    # "signature":Ljava/lang/String;
    .end local v22    # "enabled":Z
    .restart local v5    # "enabled":Z
    .restart local v6    # "signature":Ljava/lang/String;
    :cond_fb
    move/from16 v22, v5

    move-object/from16 v21, v6

    .line 250
    .end local v5    # "enabled":Z
    .end local v6    # "signature":Ljava/lang/String;
    .restart local v21    # "signature":Ljava/lang/String;
    .restart local v22    # "enabled":Z
    :goto_ff
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10c

    .line 251
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/app/compat/PackageOverride$Builder;->setMaxVersionCode(J)Landroid/app/compat/PackageOverride$Builder;
    :try_end_10c
    .catch Ljava/lang/NumberFormatException; {:try_start_f3 .. :try_end_10c} :catch_13a

    .line 258
    :cond_10c
    nop

    .line 261
    :try_start_10d
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v0

    .line 262
    .local v0, "override":Landroid/app/compat/PackageOverride;
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12b

    .line 263
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/compat/PackageOverride;

    invoke-virtual {v3, v0, v5}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->compare(Landroid/app/compat/PackageOverride;Landroid/app/compat/PackageOverride;)I

    move-result v5

    if-gez v5, :cond_132

    .line 264
    :cond_12b
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_132
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10d .. :try_end_132} :catch_133

    .line 268
    .end local v0    # "override":Landroid/app/compat/PackageOverride;
    :cond_132
    goto :goto_174

    .line 266
    :catch_133
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Failed to build PackageOverride"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_174

    .line 253
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_13a
    move-exception v0

    goto :goto_141

    .end local v21    # "signature":Ljava/lang/String;
    .end local v22    # "enabled":Z
    .restart local v5    # "enabled":Z
    .restart local v6    # "signature":Ljava/lang/String;
    :catch_13c
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v21, v6

    .line 254
    .end local v5    # "enabled":Z
    .end local v6    # "signature":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "signature":Ljava/lang/String;
    .restart local v22    # "enabled":Z
    :goto_141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid min/max version code in override entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    goto :goto_174

    .line 226
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "overrideBuilder":Landroid/app/compat/PackageOverride$Builder;
    .end local v15    # "changeId":J
    .end local v17    # "minVersionCodeStr":Ljava/lang/String;
    .end local v18    # "maxVersionCodeStr":Ljava/lang/String;
    .end local v19    # "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "enabledStr":Ljava/lang/String;
    .end local v21    # "signature":Ljava/lang/String;
    .end local v22    # "enabled":Z
    .local v5, "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "signature":Ljava/lang/String;
    :catch_158
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    .line 227
    .end local v5    # "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "signature":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "signature":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid change ID in override entry: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    nop

    .line 217
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "changeIdAndVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "overrideEntryString":Ljava/lang/String;
    :goto_174
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v1, p3

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    goto/16 :goto_45

    .line 271
    .end local v19    # "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "signature":Ljava/lang/String;
    .restart local v5    # "signatureAndConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "signature":Ljava/lang/String;
    :cond_17e
    return-object v4
.end method

.method parseRemoveOverrides(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;
    .registers 21
    .param p1, "configStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 102
    .local p2, "ownedChangeIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 106
    :cond_f
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v0

    .line 107
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;"
    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "Wildcard can\'t be used in \'remove_overrides\' flag with an empty owned_change_ids\' flag"

    const-string v6, "AppCompatOverridesParser"

    if-eqz v0, :cond_50

    .line 108
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 109
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 112
    :cond_2f
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x400000

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 115
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_3d

    .line 117
    :cond_4f
    return-object v3

    .line 120
    .end local v0    # "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_50
    move-object/from16 v7, p0

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v8, 0x2c

    invoke-direct {v0, v8}, Landroid/util/KeyValueListParser;-><init>(C)V

    move-object v8, v0

    .line 122
    .local v8, "parser":Landroid/util/KeyValueListParser;
    :try_start_5a
    invoke-virtual {v8, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_5d} :catch_d8

    .line 128
    nop

    .line 129
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_60
    invoke-virtual {v8}, Landroid/util/KeyValueListParser;->size()I

    move-result v0

    if-ge v9, v0, :cond_d7

    .line 130
    invoke-virtual {v8, v9}, Landroid/util/KeyValueListParser;->keyAt(I)Ljava/lang/String;

    move-result-object v10

    .line 131
    .local v10, "packageName":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v8, v10, v0}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 132
    .local v11, "changeIdsStr":Ljava/lang/String;
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 133
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 134
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move-object/from16 v16, v4

    goto :goto_d0

    .line 137
    :cond_82
    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v4

    goto :goto_d0

    .line 139
    :cond_88
    const-string v0, ":"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v0, 0x0

    move v14, v0

    :goto_91
    if-ge v14, v13, :cond_ce

    aget-object v15, v12, v14

    .line 141
    .local v15, "changeIdStr":Ljava/lang/String;
    :try_start_95
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 142
    .local v16, "changeId":J
    new-instance v0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v10, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_ab} :catch_ae

    .line 148
    move-object/from16 v16, v4

    .end local v16    # "changeId":J
    goto :goto_c7

    .line 143
    :catch_ae
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    const-string v4, "Invalid change ID in \'remove_overrides\' flag: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "changeIdStr":Ljava/lang/String;
    :goto_c7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    goto :goto_91

    :cond_ce
    move-object/from16 v16, v4

    .line 129
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "changeIdsStr":Ljava/lang/String;
    :goto_d0
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    goto :goto_60

    .line 153
    .end local v9    # "i":I
    :cond_d7
    return-object v3

    .line 123
    :catch_d8
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 124
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid format in \'remove_overrides\' flag: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method
