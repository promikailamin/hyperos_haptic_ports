.class public Landroid/widget/AbsListViewOptimizationHelper;
.super Ljava/lang/Object;
.source "AbsListViewOptimizationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;
    }
.end annotation


# static fields
.field private static final blacklist CLOUD_PACKAGE_TAG:Ljava/lang/String; = "package"

.field private static final blacklist CLOUD_VERSION_TAG:Ljava/lang/String; = "version"

.field public static final blacklist ENABLE_ABSLISTVIEW_PREFETCH:Z

.field private static final blacklist ENABLE_ABSLISTVIEW_PREFETCH_PACKAGES:Ljava/lang/String;

.field private static final blacklist PROP_MULTIPLE_PACKAGE_SEPARATOR:Ljava/lang/String; = "\\|"

.field private static final blacklist PROP_PACKAGENAME_VERSIONNAME_SEPARATOR:Ljava/lang/String; = "#"

.field private static final blacklist PROP_VERSIONNAME_SEPARATOR:Ljava/lang/String; = ","

.field private static final blacklist TAG:Ljava/lang/String; = "AbsListViewOptimizationHelper"


# instance fields
.field private blacklist mPackageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 30
    const-string v0, "persist.sys.enable_abslistview_prefetch_packages"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/AbsListViewOptimizationHelper;->ENABLE_ABSLISTVIEW_PREFETCH_PACKAGES:Ljava/lang/String;

    .line 36
    const-string v0, "persist.sys.enable_abslistview_prefetch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/AbsListViewOptimizationHelper;->ENABLE_ABSLISTVIEW_PREFETCH:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-boolean v0, Landroid/widget/AbsListViewOptimizationHelper;->ENABLE_ABSLISTVIEW_PREFETCH:Z

    if-nez v0, :cond_8

    .line 101
    return-void

    .line 103
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListViewOptimizationHelper;->mPackageInfos:Ljava/util/List;

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/AbsListViewOptimizationHelper;->init(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method private blacklist init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    sget-object v0, Landroid/widget/AbsListViewOptimizationHelper;->ENABLE_ABSLISTVIEW_PREFETCH_PACKAGES:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 115
    nop

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    const-string v1, "abslistview_opt_cloud"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "packagesFromSettings":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/widget/AbsListViewOptimizationHelper;->parseSettingsProviderData(Ljava/lang/String;)V

    .line 118
    .end local v0    # "packagesFromSettings":Ljava/lang/String;
    goto :goto_1a

    .line 119
    :cond_17
    invoke-direct {p0, v0}, Landroid/widget/AbsListViewOptimizationHelper;->parsePropData(Ljava/lang/String;)V

    .line 121
    :goto_1a
    iget-object v0, p0, Landroid/widget/AbsListViewOptimizationHelper;->mPackageInfos:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsListViewOptimizationHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method private blacklist parsePropData(Ljava/lang/String;)V
    .registers 11
    .param p1, "propData"    # Ljava/lang/String;

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 199
    return-void

    .line 202
    :cond_7
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "appPackages":[Ljava/lang/String;
    if-eqz v0, :cond_60

    array-length v1, v0

    if-nez v1, :cond_13

    goto :goto_60

    .line 207
    :cond_13
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_5f

    .line 208
    aget-object v2, v0, v1

    .line 209
    .local v2, "appPackage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 210
    goto :goto_5c

    .line 213
    :cond_20
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "packageNameAndVersions":[Ljava/lang/String;
    if-eqz v3, :cond_5c

    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2d

    .line 215
    goto :goto_5c

    .line 217
    :cond_2d
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "packageName":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "versionNames":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 221
    goto :goto_5c

    .line 223
    :cond_42
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "versionsArr":[Ljava/lang/String;
    if-eqz v6, :cond_5c

    array-length v7, v6

    if-nez v7, :cond_4e

    .line 225
    goto :goto_5c

    .line 228
    :cond_4e
    new-instance v7, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, p0, v4, v8}, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;-><init>(Landroid/widget/AbsListViewOptimizationHelper;Ljava/lang/String;Ljava/util/List;)V

    .line 229
    .local v7, "packageInfo":Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;
    iget-object v8, p0, Landroid/widget/AbsListViewOptimizationHelper;->mPackageInfos:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v2    # "appPackage":Ljava/lang/String;
    .end local v3    # "packageNameAndVersions":[Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "versionNames":Ljava/lang/String;
    .end local v6    # "versionsArr":[Ljava/lang/String;
    .end local v7    # "packageInfo":Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;
    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 231
    .end local v1    # "i":I
    :cond_5f
    return-void

    .line 204
    :cond_60
    :goto_60
    return-void
.end method

.method private blacklist parseSettingsProviderData(Ljava/lang/String;)V
    .registers 11
    .param p1, "settingsData"    # Ljava/lang/String;

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    return-void

    .line 163
    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 165
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 166
    .local v2, "packageObject":Lorg/json/JSONObject;
    if-nez v2, :cond_1c

    .line 167
    goto :goto_63

    .line 170
    :cond_1c
    const-string v3, "package"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 172
    goto :goto_63

    .line 175
    :cond_29
    const-string v4, "version"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 176
    .local v4, "versionsArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_63

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_38

    .line 177
    goto :goto_63

    .line 181
    :cond_38
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v5, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_42
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_59

    .line 183
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, "version":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 185
    goto :goto_56

    .line 188
    :cond_53
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v7    # "version":Ljava/lang/String;
    :goto_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 190
    .end local v6    # "j":I
    :cond_59
    iget-object v6, p0, Landroid/widget/AbsListViewOptimizationHelper;->mPackageInfos:Ljava/util/List;

    new-instance v7, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;

    invoke-direct {v7, p0, v3, v5}, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;-><init>(Landroid/widget/AbsListViewOptimizationHelper;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_63} :catch_67

    .line 164
    .end local v2    # "packageObject":Lorg/json/JSONObject;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "versionsArray":Lorg/json/JSONArray;
    .end local v5    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_63
    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 194
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_66
    goto :goto_80

    .line 192
    :catch_67
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse settings data fail, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsListViewOptimizationHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_80
    return-void
.end method


# virtual methods
.method public blacklist checkOptimizationShouldBeEnable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2d

    .line 130
    :cond_e
    iget-object v0, p0, Landroid/widget/AbsListViewOptimizationHelper;->mPackageInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;

    .line 131
    .local v2, "packageInfo":Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;
    invoke-virtual {v2, p1}, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->comparePackageName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 132
    invoke-virtual {v2, p2}, Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;->containsVersion(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 134
    .end local v2    # "packageInfo":Landroid/widget/AbsListViewOptimizationHelper$PackageInfo;
    :cond_2b
    goto :goto_14

    .line 136
    :cond_2c
    return v1

    .line 127
    :cond_2d
    :goto_2d
    return v1
.end method
