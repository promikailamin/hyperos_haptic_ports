.class public Landroid/config/ForceDarkConfigUtils;
.super Ljava/lang/Object;
.source "ForceDarkConfigUtils.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "ForceDarkConfigUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist mergeConfig(Landroid/config/ForceDarkAppConfig;Landroid/config/ForceDarkAppConfig;)Landroid/config/ForceDarkAppConfig;
    .registers 13
    .param p0, "main"    # Landroid/config/ForceDarkAppConfig;
    .param p1, "secondary"    # Landroid/config/ForceDarkAppConfig;

    .line 90
    if-eqz p0, :cond_92

    if-nez p1, :cond_6

    goto/16 :goto_92

    .line 94
    :cond_6
    invoke-virtual {p0}, Landroid/config/ForceDarkAppConfig;->getForceDarkActivityConfigList()Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "mainAcitivtyList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkActivityConfig;>;"
    invoke-virtual {p1}, Landroid/config/ForceDarkAppConfig;->getForceDarkActivityConfigList()Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "secondaryAcitivtyList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkActivityConfig;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 97
    invoke-virtual {p0, v1}, Landroid/config/ForceDarkAppConfig;->setForceDarkActivityConfigList(Ljava/util/List;)V

    goto :goto_76

    .line 98
    :cond_15
    if-eqz v1, :cond_76

    .line 99
    invoke-virtual {p1}, Landroid/config/ForceDarkAppConfig;->getForceDarkActivityConfigList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/config/ForceDarkActivityConfig;

    .line 100
    .local v4, "secondaryActivity":Landroid/config/ForceDarkActivityConfig;
    const/4 v5, 0x0

    .line 101
    .local v5, "hasSameActivity":Z
    invoke-virtual {p0}, Landroid/config/ForceDarkAppConfig;->getForceDarkActivityConfigList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/config/ForceDarkActivityConfig;

    .line 102
    .local v7, "mainActivity":Landroid/config/ForceDarkActivityConfig;
    invoke-virtual {v7}, Landroid/config/ForceDarkActivityConfig;->getActivityName()Ljava/lang/String;

    move-result-object v8

    .line 103
    invoke-virtual {v4}, Landroid/config/ForceDarkActivityConfig;->getActivityName()Ljava/lang/String;

    move-result-object v9

    .line 102
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 105
    const/4 v5, 0x1

    .line 106
    invoke-virtual {v7}, Landroid/config/ForceDarkActivityConfig;->getForceDarkViewConfigList()Ljava/util/List;

    move-result-object v6

    .line 107
    .local v6, "mainViewList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    invoke-virtual {v4}, Landroid/config/ForceDarkActivityConfig;->getForceDarkViewConfigList()Ljava/util/List;

    move-result-object v8

    .line 109
    .local v8, "secondaryViewList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    if-nez v6, :cond_5d

    .line 110
    invoke-virtual {v7, v8}, Landroid/config/ForceDarkActivityConfig;->setForceDarkViewConfigList(Ljava/util/List;)V

    goto :goto_6c

    .line 111
    :cond_5d
    if-eqz v8, :cond_6c

    .line 112
    invoke-virtual {v7}, Landroid/config/ForceDarkActivityConfig;->getForceDarkViewConfigList()Ljava/util/List;

    move-result-object v9

    .line 113
    invoke-virtual {v4}, Landroid/config/ForceDarkActivityConfig;->getForceDarkViewConfigList()Ljava/util/List;

    move-result-object v10

    .line 112
    invoke-interface {v9, v2, v10}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_6c

    .line 117
    .end local v6    # "mainViewList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    .end local v7    # "mainActivity":Landroid/config/ForceDarkActivityConfig;
    .end local v8    # "secondaryViewList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    :cond_6b
    goto :goto_34

    .line 118
    :cond_6c
    :goto_6c
    if-nez v5, :cond_75

    .line 120
    invoke-virtual {p0}, Landroid/config/ForceDarkAppConfig;->getForceDarkActivityConfigList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 122
    .end local v4    # "secondaryActivity":Landroid/config/ForceDarkActivityConfig;
    .end local v5    # "hasSameActivity":Z
    :cond_75
    goto :goto_1f

    .line 125
    :cond_76
    :goto_76
    invoke-virtual {p0}, Landroid/config/ForceDarkAppConfig;->getForceDarkViewGlobalConfigList()Ljava/util/List;

    move-result-object v3

    .line 126
    .local v3, "mainViewList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    invoke-virtual {p1}, Landroid/config/ForceDarkAppConfig;->getForceDarkViewGlobalConfigList()Ljava/util/List;

    move-result-object v4

    .line 128
    .local v4, "secondaryViewList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    if-nez v3, :cond_84

    .line 129
    invoke-virtual {p0, v4}, Landroid/config/ForceDarkAppConfig;->setForceDarkViewGlobalConfigList(Ljava/util/List;)V

    goto :goto_91

    .line 130
    :cond_84
    if-eqz v4, :cond_91

    .line 131
    invoke-virtual {p0}, Landroid/config/ForceDarkAppConfig;->getForceDarkViewGlobalConfigList()Ljava/util/List;

    move-result-object v5

    .line 132
    invoke-virtual {p1}, Landroid/config/ForceDarkAppConfig;->getForceDarkViewGlobalConfigList()Ljava/util/List;

    move-result-object v6

    .line 131
    invoke-interface {v5, v2, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 134
    :cond_91
    :goto_91
    return-object p0

    .line 91
    .end local v0    # "mainAcitivtyList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkActivityConfig;>;"
    .end local v1    # "secondaryAcitivtyList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkActivityConfig;>;"
    .end local v3    # "mainViewList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    .end local v4    # "secondaryViewList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    :cond_92
    :goto_92
    return-object p0
.end method

.method public static blacklist parseForceDarkActivityConfigs(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 11
    .param p0, "forceDarkActivityConfigListJsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkActivityConfig;",
            ">;"
        }
    .end annotation

    .line 139
    const-string v0, "forceDarkViewConfigList"

    const-string v1, "blackMask"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkActivityConfig;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    :try_start_a
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_53

    .line 142
    new-instance v4, Landroid/config/ForceDarkActivityConfig;

    invoke-direct {v4}, Landroid/config/ForceDarkActivityConfig;-><init>()V

    .line 143
    .local v4, "forceDarkActivityConfig":Landroid/config/ForceDarkActivityConfig;
    nop

    .line 144
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 145
    .local v5, "activityConfigJsonObject":Lorg/json/JSONObject;
    const-string v6, "activityName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "activityName":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/config/ForceDarkActivityConfig;->setActivityName(Ljava/lang/String;)V

    .line 147
    const-string v7, "forceDark"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 148
    .local v7, "forceDark":Z
    invoke-virtual {v4, v7}, Landroid/config/ForceDarkActivityConfig;->setForceDark(Z)V

    .line 150
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 151
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 152
    .local v8, "blackMask":Z
    invoke-virtual {v4, v8}, Landroid/config/ForceDarkActivityConfig;->setBlackMask(Z)V

    .line 155
    .end local v8    # "blackMask":Z
    :cond_39
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 156
    nop

    .line 157
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 158
    .local v8, "forceDarkViewConfigListJson":Lorg/json/JSONArray;
    nop

    .line 159
    invoke-static {v8}, Landroid/config/ForceDarkConfigUtils;->parseForceDarkViewConfigs(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v9

    .line 160
    .local v9, "forceDarkViewConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    invoke-virtual {v4, v9}, Landroid/config/ForceDarkActivityConfig;->setForceDarkViewConfigList(Ljava/util/List;)V

    .line 163
    .end local v8    # "forceDarkViewConfigListJson":Lorg/json/JSONArray;
    .end local v9    # "forceDarkViewConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    :cond_4c
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_4f} :catch_54

    .line 141
    nop

    .end local v4    # "forceDarkActivityConfig":Landroid/config/ForceDarkActivityConfig;
    .end local v5    # "activityConfigJsonObject":Lorg/json/JSONObject;
    .end local v6    # "activityName":Ljava/lang/String;
    .end local v7    # "forceDark":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 167
    .end local v3    # "i":I
    :cond_53
    goto :goto_5e

    .line 165
    :catch_54
    move-exception v0

    .line 166
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ForceDarkConfigUtils"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_5e
    return-object v2
.end method

.method public static blacklist parseForceDarkAppConfig(Ljava/lang/String;)Landroid/config/ForceDarkAppConfig;
    .registers 14
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 22
    const-string v0, "amend"

    const-string v1, "forceDarkViewGlobalConfigList"

    const-string v2, "forceDarkActivityConfigList"

    const-string v3, "tertiaryRule"

    const-string v4, "secondaryRule"

    const-string v5, "mainRule"

    const-string v6, "versionCode"

    const-string v7, "versionName"

    const-string v8, "forceDark"

    const/4 v9, 0x0

    :try_start_13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 23
    return-object v9

    .line 26
    :cond_1a
    new-instance v10, Landroid/config/ForceDarkAppConfig;

    invoke-direct {v10}, Landroid/config/ForceDarkAppConfig;-><init>()V

    .line 28
    .local v10, "forceDarkAppConfig":Landroid/config/ForceDarkAppConfig;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .local v11, "appConfig":Lorg/json/JSONObject;
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 30
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 31
    .local v8, "forceDark":Z
    invoke-virtual {v10, v8}, Landroid/config/ForceDarkAppConfig;->setForceDark(Z)V

    .line 34
    .end local v8    # "forceDark":Z
    :cond_31
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 35
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    .local v7, "versionName":Ljava/lang/String;
    invoke-virtual {v10, v7}, Landroid/config/ForceDarkAppConfig;->setVersionName(Ljava/lang/String;)V

    .line 39
    .end local v7    # "versionName":Ljava/lang/String;
    :cond_3e
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 40
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 41
    .local v6, "versionCode":I
    invoke-virtual {v10, v6}, Landroid/config/ForceDarkAppConfig;->setVersionCode(I)V

    .line 44
    .end local v6    # "versionCode":I
    :cond_4b
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 45
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 46
    .local v5, "mainRule":I
    invoke-virtual {v10, v5}, Landroid/config/ForceDarkAppConfig;->setMainRule(I)V

    .line 49
    .end local v5    # "mainRule":I
    :cond_58
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 50
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 51
    .local v4, "secondaryRule":I
    invoke-virtual {v10, v4}, Landroid/config/ForceDarkAppConfig;->setSecondaryRule(I)V

    .line 53
    .end local v4    # "secondaryRule":I
    :cond_65
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 54
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 55
    .local v3, "tertiaryRule":I
    invoke-virtual {v10, v3}, Landroid/config/ForceDarkAppConfig;->setTertiaryRule(I)V

    .line 58
    .end local v3    # "tertiaryRule":I
    :cond_72
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 59
    nop

    .line 60
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 61
    .local v2, "forceDarkActivityConfigListJsonArray":Lorg/json/JSONArray;
    nop

    .line 62
    invoke-static {v2}, Landroid/config/ForceDarkConfigUtils;->parseForceDarkActivityConfigs(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 63
    .local v3, "forceDarkActivityConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkActivityConfig;>;"
    invoke-virtual {v10, v3}, Landroid/config/ForceDarkAppConfig;->setForceDarkActivityConfigList(Ljava/util/List;)V

    .line 66
    .end local v2    # "forceDarkActivityConfigListJsonArray":Lorg/json/JSONArray;
    .end local v3    # "forceDarkActivityConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkActivityConfig;>;"
    :cond_85
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 67
    nop

    .line 68
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 69
    .local v1, "forceDarkViewConfigListJson":Lorg/json/JSONArray;
    nop

    .line 70
    invoke-static {v1}, Landroid/config/ForceDarkConfigUtils;->parseForceDarkViewConfigs(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, "forceDarkViewConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    invoke-virtual {v10, v2}, Landroid/config/ForceDarkAppConfig;->setForceDarkViewGlobalConfigList(Ljava/util/List;)V

    .line 74
    .end local v1    # "forceDarkViewConfigListJson":Lorg/json/JSONArray;
    .end local v2    # "forceDarkViewConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    :cond_98
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 75
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/config/ForceDarkConfigUtils;->parseForceDarkAppConfig(Ljava/lang/String;)Landroid/config/ForceDarkAppConfig;

    move-result-object v0

    .line 76
    .local v0, "amendConfig":Landroid/config/ForceDarkAppConfig;
    invoke-static {v10, v0}, Landroid/config/ForceDarkConfigUtils;->mergeConfig(Landroid/config/ForceDarkAppConfig;Landroid/config/ForceDarkAppConfig;)Landroid/config/ForceDarkAppConfig;

    move-result-object v1
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_aa} :catch_ac

    move-object v10, v1

    .line 79
    .end local v0    # "amendConfig":Landroid/config/ForceDarkAppConfig;
    :cond_ab
    return-object v10

    .line 81
    .end local v10    # "forceDarkAppConfig":Landroid/config/ForceDarkAppConfig;
    .end local v11    # "appConfig":Lorg/json/JSONObject;
    :catch_ac
    move-exception v0

    .line 82
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ForceDarkConfigUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "e":Lorg/json/JSONException;
    return-object v9
.end method

.method public static blacklist parseForceDarkViewConfigs(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 19
    .param p0, "forceDarkViewConfigList"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewConfig;",
            ">;"
        }
    .end annotation

    .line 173
    const-string v0, "conditions"

    const-string v1, "backgroundUsage"

    const-string v2, "blackMask"

    const-string v3, "usage"

    const-string v4, "forceDark"

    const-string v5, "minY"

    const-string v6, "minX"

    const-string v7, "xmlIndexId"

    const-string v8, "id"

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewConfig;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_18
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_c2

    .line 176
    new-instance v11, Landroid/config/ForceDarkViewConfig;

    invoke-direct {v11}, Landroid/config/ForceDarkViewConfig;-><init>()V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_23} :catch_c5

    .line 177
    .local v11, "forceDarkViewConfig":Landroid/config/ForceDarkViewConfig;
    move-object/from16 v12, p0

    :try_start_25
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 178
    .local v13, "viewConfigJsonObject":Lorg/json/JSONObject;
    const-string v14, "viewName"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 179
    .local v14, "viewName":Ljava/lang/String;
    invoke-virtual {v11, v14}, Landroid/config/ForceDarkViewConfig;->setViewName(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3f

    .line 182
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 183
    .local v15, "id":Ljava/lang/String;
    invoke-virtual {v11, v15}, Landroid/config/ForceDarkViewConfig;->setId(Ljava/lang/String;)V

    .line 186
    .end local v15    # "id":Ljava/lang/String;
    :cond_3f
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4c

    .line 187
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 188
    .local v15, "xmlIndexId":Ljava/lang/String;
    invoke-virtual {v11, v15}, Landroid/config/ForceDarkViewConfig;->setXmlIndexId(Ljava/lang/String;)V

    .line 191
    .end local v15    # "xmlIndexId":Ljava/lang/String;
    :cond_4c
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_59

    .line 192
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 193
    .local v15, "minX":I
    invoke-virtual {v11, v15}, Landroid/config/ForceDarkViewConfig;->setMinX(I)V

    .line 196
    .end local v15    # "minX":I
    :cond_59
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_66

    .line 197
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 198
    .local v15, "minY":I
    invoke-virtual {v11, v15}, Landroid/config/ForceDarkViewConfig;->setMinY(I)V

    .line 201
    .end local v15    # "minY":I
    :cond_66
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_73

    .line 202
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 203
    .local v15, "forceDark":Z
    invoke-virtual {v11, v15}, Landroid/config/ForceDarkViewConfig;->setForceDark(Z)V

    .line 206
    .end local v15    # "forceDark":Z
    :cond_73
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_80

    .line 207
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 208
    .local v15, "usage":I
    invoke-virtual {v11, v15}, Landroid/config/ForceDarkViewConfig;->setUsage(I)V

    .line 211
    .end local v15    # "usage":I
    :cond_80
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8d

    .line 212
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 213
    .local v15, "blackMask":Z
    invoke-virtual {v11, v15}, Landroid/config/ForceDarkViewConfig;->setBlackMask(Z)V

    .line 216
    .end local v15    # "blackMask":Z
    :cond_8d
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9a

    .line 217
    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 218
    .local v15, "backgroundUsage":I
    invoke-virtual {v11, v15}, Landroid/config/ForceDarkViewConfig;->setBackgroundUsage(I)V

    .line 221
    .end local v15    # "backgroundUsage":I
    :cond_9a
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b4

    .line 222
    nop

    .line 223
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 224
    .local v15, "forceDarkViewConditions":Lorg/json/JSONArray;
    nop

    .line 225
    invoke-static {v15}, Landroid/config/ForceDarkConfigUtils;->parseForceDarkViewPositionInfo(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v17, v16

    .line 226
    .local v17, "forceDarkViewPositionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewPositionInfo;>;"
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "forceDarkViewPositionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewPositionInfo;>;"
    .local v0, "forceDarkViewPositionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewPositionInfo;>;"
    invoke-virtual {v11, v0}, Landroid/config/ForceDarkViewConfig;->setForceDarkViewPositionInfoList(Ljava/util/List;)V

    goto :goto_b6

    .line 221
    .end local v0    # "forceDarkViewPositionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewPositionInfo;>;"
    .end local v15    # "forceDarkViewConditions":Lorg/json/JSONArray;
    :cond_b4
    move-object/from16 v16, v0

    .line 229
    :goto_b6
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b9
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_b9} :catch_c0

    .line 175
    nop

    .end local v11    # "forceDarkViewConfig":Landroid/config/ForceDarkViewConfig;
    .end local v13    # "viewConfigJsonObject":Lorg/json/JSONObject;
    .end local v14    # "viewName":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_18

    .line 231
    .end local v10    # "i":I
    :catch_c0
    move-exception v0

    goto :goto_c8

    .line 175
    .restart local v10    # "i":I
    :cond_c2
    move-object/from16 v12, p0

    .line 233
    .end local v10    # "i":I
    goto :goto_d1

    .line 231
    :catch_c5
    move-exception v0

    move-object/from16 v12, p0

    .line 232
    .local v0, "e":Lorg/json/JSONException;
    :goto_c8
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ForceDarkConfigUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_d1
    return-object v9
.end method

.method public static blacklist parseForceDarkViewPositionInfo(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 11
    .param p0, "forceDarkViewPositionInfoList"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/config/ForceDarkViewPositionInfo;",
            ">;"
        }
    .end annotation

    .line 240
    const-string v0, "xmlIndexId"

    const-string v1, "id"

    const-string v2, "index"

    const-string v3, "parent"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/config/ForceDarkViewPositionInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    :try_start_e
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_61

    .line 243
    new-instance v6, Landroid/config/ForceDarkViewPositionInfo;

    invoke-direct {v6}, Landroid/config/ForceDarkViewPositionInfo;-><init>()V

    .line 244
    .local v6, "forceDarkViewPositionInfo":Landroid/config/ForceDarkViewPositionInfo;
    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 245
    .local v7, "viewPositionInfoJsonObject":Lorg/json/JSONObject;
    const-string v8, "viewName"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "viewName":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/config/ForceDarkViewPositionInfo;->setViewName(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 248
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 249
    .local v9, "parent":I
    invoke-virtual {v6, v9}, Landroid/config/ForceDarkViewPositionInfo;->setParent(I)V

    .line 251
    .end local v9    # "parent":I
    :cond_33
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 252
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 253
    .local v9, "index":I
    invoke-virtual {v6, v9}, Landroid/config/ForceDarkViewPositionInfo;->setIndex(I)V

    .line 255
    .end local v9    # "index":I
    :cond_40
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 256
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "id":Ljava/lang/String;
    invoke-virtual {v6, v9}, Landroid/config/ForceDarkViewPositionInfo;->setId(Ljava/lang/String;)V

    .line 259
    .end local v9    # "id":Ljava/lang/String;
    :cond_4d
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 260
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, "xmlIndexId":Ljava/lang/String;
    invoke-virtual {v6, v9}, Landroid/config/ForceDarkViewPositionInfo;->setXmlIndexId(Ljava/lang/String;)V

    .line 263
    .end local v9    # "xmlIndexId":Ljava/lang/String;
    :cond_5a
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_5d} :catch_62

    .line 242
    nop

    .end local v6    # "forceDarkViewPositionInfo":Landroid/config/ForceDarkViewPositionInfo;
    .end local v7    # "viewPositionInfoJsonObject":Lorg/json/JSONObject;
    .end local v8    # "viewName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 267
    .end local v5    # "i":I
    :cond_61
    goto :goto_6c

    .line 265
    :catch_62
    move-exception v0

    .line 266
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ForceDarkConfigUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_6c
    return-object v4
.end method
