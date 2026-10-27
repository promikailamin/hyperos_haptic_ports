.class public Landroid/app/MiuiThemeHelper;
.super Ljava/lang/Object;
.source "MiuiThemeHelper.java"


# static fields
.field private static final blacklist ICON_THEME:Ljava/lang/String; = "/data/system/theme/icons"

.field private static final blacklist KEY_MIUI_MOD_ICON_ENABLE:Ljava/lang/String; = "key_miui_mod_icon_enable"

.field public static final blacklist MIUI_RES_PATH:Ljava/lang/String; = "/system/framework/framework-miui-res.apk"

.field private static final blacklist MIUI_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"

.field private static volatile blacklist sMiuiOptimizationEnable:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static blacklist addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .registers 2
    .param p0, "am"    # Landroid/content/res/AssetManager;

    .line 105
    const-string v0, "/system/framework/framework-miui-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public static blacklist canKeepActivityAlive(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "changes"    # I
    .param p2, "oldConfig"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .line 164
    const/high16 v0, 0x400000

    if-ne p1, v0, :cond_20

    .line 166
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getExtraConfig()Landroid/content/res/IMiuiConfiguration;

    move-result-object v0

    check-cast v0, Landroid/content/res/MiuiConfiguration;

    .line 167
    .local v0, "oldThemeConfig":Landroid/content/res/MiuiConfiguration;
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getExtraConfig()Landroid/content/res/IMiuiConfiguration;

    move-result-object v1

    check-cast v1, Landroid/content/res/MiuiConfiguration;

    .line 168
    .local v1, "newThemeConfig":Landroid/content/res/MiuiConfiguration;
    iget v2, v1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v3, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 169
    iget-wide v4, v1, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-static {p0, v4, v5}, Landroid/content/res/MiuiConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v2

    xor-int/2addr v2, v3

    return v2

    .line 172
    .end local v0    # "oldThemeConfig":Landroid/content/res/MiuiConfiguration;
    .end local v1    # "newThemeConfig":Landroid/content/res/MiuiConfiguration;
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4
    .param p0, "srcConfig"    # Landroid/content/res/Configuration;
    .param p1, "desConfig"    # Landroid/content/res/Configuration;

    .line 112
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getExtraConfig()Landroid/content/res/IMiuiConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getExtraConfig()Landroid/content/res/IMiuiConfiguration;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/res/IMiuiConfiguration;->updateFrom(Landroid/content/res/IMiuiConfiguration;)I

    .line 113
    return-void
.end method

.method public static blacklist getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 16
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageItemName"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-le v0, v3, :cond_11

    const-string v0, "persist.sys.miui_optimization"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 72
    return-object v2

    .line 74
    :cond_11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object v2

    .line 76
    :cond_18
    const/4 v0, 0x0

    .line 78
    .local v0, "apm":Landroid/app/ApplicationPackageManager;
    :try_start_19
    move-object v3, p0

    check-cast v3, Landroid/app/ApplicationPackageManager;
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_1c} :catch_54

    move-object v0, v3

    .line 81
    nop

    .line 83
    if-eqz p2, :cond_2c

    if-eqz p4, :cond_2b

    iget-object v3, p4, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    .line 86
    .local v1, "isPackageIcon":Z
    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Landroid/app/ApplicationPackageManager;->getContext()Landroid/app/ContextImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, "hostPkgName":Ljava/lang/String;
    const-string v3, "com.google.android.setupwizard"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    return-object v2

    .line 92
    :cond_3d
    if-nez v1, :cond_40

    move-object v2, p2

    .line 93
    .local v2, "className":Ljava/lang/String;
    :cond_40
    invoke-static {p1, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    .line 94
    .local v10, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v10, :cond_53

    .line 95
    invoke-virtual {v0}, Landroid/app/ApplicationPackageManager;->getContext()Landroid/app/ContextImpl;

    move-result-object v3

    move-object v4, p1

    move-object v5, v2

    move v6, p3

    move-object v7, p4

    move v8, v1

    invoke-static/range {v3 .. v8}, Lmiui/content/res/IconCustomizer;->getIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 98
    :cond_53
    return-object v10

    .line 79
    .end local v1    # "isPackageIcon":Z
    .end local v2    # "className":Ljava/lang/String;
    .end local v9    # "hostPkgName":Ljava/lang/String;
    .end local v10    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_54
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/ClassCastException;
    if-eqz p3, :cond_5b

    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_5b
    return-object v2
.end method

.method private static blacklist getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 145
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getExtraConfig()Landroid/content/res/IMiuiConfiguration;

    move-result-object v0

    .line 146
    .local v0, "im":Landroid/content/res/IMiuiConfiguration;
    instance-of v1, v0, Landroid/content/res/MiuiConfiguration;

    if-eqz v1, :cond_c

    .line 147
    move-object v1, v0

    check-cast v1, Landroid/content/res/MiuiConfiguration;

    return-object v1

    .line 149
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .registers 9
    .param p0, "changes"    # I
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 119
    const-string v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/MiuiThemeHelper;->sMiuiOptimizationEnable:Z

    .line 120
    invoke-static {p1}, Landroid/app/MiuiThemeHelper;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v0

    .line 121
    .local v0, "extraConfig":Landroid/content/res/MiuiConfiguration;
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_50

    .line 122
    iget-wide v1, v0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 124
    .local v1, "flag":J
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 125
    const-wide/16 v3, 0x10

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_36

    .line 126
    invoke-static {p1}, Lmiui/content/res/ThemeFontChangeHelper;->quitProcessIfNeed(Landroid/content/res/Configuration;)V

    .line 127
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 128
    invoke-static {}, Landroid/view/ExtraGLES20Canvas;->freeCaches()V

    .line 130
    :cond_36
    const-wide/16 v3, 0x8

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_40

    .line 131
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 134
    :cond_40
    const-wide/32 v3, 0x20000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4f

    .line 135
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-static {v0, v3}, Lmiui/util/TypefaceUtils;->onMiuiFontChanged(Landroid/content/res/MiuiConfiguration;Landroid/os/LocaleList;)V

    .line 137
    .end local v1    # "flag":J
    :cond_4f
    goto :goto_65

    :cond_50
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_5a

    .line 138
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-static {v1}, Lmiui/util/TypefaceUtils;->onUiModeChange(I)V

    goto :goto_65

    .line 139
    :cond_5a
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_65

    .line 140
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/TypefaceUtils;->onMiuiFontChanged(Landroid/content/res/MiuiConfiguration;Landroid/os/LocaleList;)V

    .line 142
    :cond_65
    :goto_65
    return-void
.end method

.method public static blacklist handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .registers 2
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 157
    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    .line 158
    return-void
.end method

.method public static blacklist isInternationalBuildWithDefaultTheme()Z
    .registers 2

    .line 51
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/icons"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public static blacklist isMiuiOptimizationEnabled()Z
    .registers 1

    .line 44
    sget-boolean v0, Landroid/app/MiuiThemeHelper;->sMiuiOptimizationEnable:Z

    return v0
.end method

.method public static whitelist isModIconEnabled()Z
    .registers 5

    .line 55
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 56
    .local v0, "activityThread":Landroid/app/ActivityThread;
    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 57
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 58
    .local v2, "application":Landroid/app/Application;
    if-eqz v2, :cond_1c

    .line 59
    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_miui_mod_icon_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1

    .line 62
    .end local v2    # "application":Landroid/app/Application;
    :cond_1c
    return v1
.end method

.method public static blacklist isScreenshotMode()Z
    .registers 2

    .line 266
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static whitelist parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 17
    .param p0, "value"    # Ljava/lang/String;

    .line 176
    move-object/from16 v1, p0

    const/4 v0, -0x4

    .line 177
    .local v0, "intPos":I
    const/4 v2, -0x3

    .line 178
    .local v2, "dotPos":I
    const/4 v3, -0x2

    .line 179
    .local v3, "fractionPos":I
    const/4 v4, -0x1

    .line 180
    .local v4, "unitPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, -0x1

    const/16 v8, 0x30

    const/4 v9, -0x3

    if-ge v5, v6, :cond_3f

    .line 181
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 182
    .local v6, "c":C
    const/4 v10, -0x4

    const/16 v11, 0x39

    if-ne v0, v10, :cond_1f

    if-lt v6, v8, :cond_1f

    if-gt v6, v11, :cond_1f

    .line 183
    move v0, v5

    .line 185
    :cond_1f
    if-ne v2, v9, :cond_26

    const/16 v10, 0x2e

    if-ne v6, v10, :cond_26

    .line 186
    move v2, v5

    .line 188
    :cond_26
    if-eq v2, v9, :cond_2d

    if-lt v6, v8, :cond_2d

    if-gt v6, v11, :cond_2d

    .line 189
    move v3, v5

    .line 191
    :cond_2d
    if-ne v4, v7, :cond_3c

    const/16 v10, 0x61

    if-lt v6, v10, :cond_3c

    const/16 v10, 0x7a

    if-gt v6, v10, :cond_3c

    .line 192
    move v4, v5

    .line 193
    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_43

    .line 180
    .end local v6    # "c":C
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_3f
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 196
    .end local v0    # "intPos":I
    .local v2, "intPos":I
    .local v3, "dotPos":I
    .local v4, "fractionPos":I
    .local v5, "unitPos":I
    :goto_43
    const/4 v6, 0x0

    .line 197
    .local v6, "f":F
    const/4 v10, 0x0

    .line 198
    .local v10, "fraction":I
    const/4 v11, 0x0

    .line 199
    .local v11, "unitType":I
    const/4 v12, 0x0

    .line 201
    .local v12, "mantissaShift":I
    if-eq v5, v7, :cond_124

    if-ge v3, v4, :cond_124

    if-ge v4, v5, :cond_124

    .line 203
    const/4 v0, 0x0

    :try_start_4e
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_56} :catch_121

    move v6, v0

    .line 206
    nop

    .line 207
    if-eq v3, v9, :cond_89

    const/4 v0, -0x2

    if-eq v4, v0, :cond_89

    .line 209
    const/4 v0, 0x4

    .line 210
    .local v0, "fracMaxDigits":I
    add-int/lit8 v7, v3, 0x1

    .line 211
    .local v7, "fracStart":I
    sub-int v9, v4, v3

    const/4 v14, 0x4

    :try_start_63
    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v7

    .line 212
    .local v9, "fracEnd":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    .line 213
    .local v13, "tmp":Ljava/lang/StringBuilder;
    :goto_72
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-ge v15, v14, :cond_7c

    .line 214
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 216
    :cond_7c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_84} :catch_86

    move v10, v8

    .line 219
    .end local v0    # "fracMaxDigits":I
    .end local v7    # "fracStart":I
    .end local v9    # "fracEnd":I
    .end local v13    # "tmp":Ljava/lang/StringBuilder;
    goto :goto_89

    .line 217
    :catch_86
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    return-object v7

    .line 222
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_89
    :goto_89
    const/16 v0, 0x100

    if-ge v10, v0, :cond_91

    .line 223
    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr v6, v0

    goto :goto_b2

    .line 224
    :cond_91
    const v0, 0x8000

    if-ge v10, v0, :cond_9b

    .line 225
    const/high16 v0, 0x47000000    # 32768.0f

    mul-float/2addr v6, v0

    .line 226
    const/4 v12, 0x1

    goto :goto_b2

    .line 227
    :cond_9b
    const/high16 v0, 0x800000

    if-ge v10, v0, :cond_a4

    .line 228
    const/high16 v0, 0x4b000000    # 8388608.0f

    mul-float/2addr v6, v0

    .line 229
    const/4 v12, 0x2

    goto :goto_b2

    .line 230
    :cond_a4
    int-to-long v7, v10

    const-wide v13, 0x80000000L

    cmp-long v0, v7, v13

    if-gez v0, :cond_b2

    .line 231
    const/high16 v0, 0x4f000000

    mul-float/2addr v6, v0

    .line 232
    const/4 v12, 0x3

    .line 234
    :cond_b2
    :goto_b2
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "unit":Ljava/lang/String;
    const-string v7, "px"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 236
    const/4 v7, 0x0

    .end local v11    # "unitType":I
    .local v7, "unitType":I
    goto :goto_fc

    .line 237
    .end local v7    # "unitType":I
    .restart local v11    # "unitType":I
    :cond_c0
    const-string v7, "dp"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_fb

    const-string v7, "dip"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    goto :goto_fb

    .line 239
    :cond_d1
    const-string v7, "sp"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_db

    .line 240
    const/4 v7, 0x2

    .end local v11    # "unitType":I
    .restart local v7    # "unitType":I
    goto :goto_fc

    .line 241
    .end local v7    # "unitType":I
    .restart local v11    # "unitType":I
    :cond_db
    const-string v7, "pt"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 242
    const/4 v7, 0x3

    .end local v11    # "unitType":I
    .restart local v7    # "unitType":I
    goto :goto_fc

    .line 243
    .end local v7    # "unitType":I
    .restart local v11    # "unitType":I
    :cond_e5
    const-string v7, "in"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ef

    .line 244
    const/4 v7, 0x4

    .end local v11    # "unitType":I
    .restart local v7    # "unitType":I
    goto :goto_fc

    .line 245
    .end local v7    # "unitType":I
    .restart local v11    # "unitType":I
    :cond_ef
    const-string v7, "mm"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 246
    const/4 v7, 0x5

    .end local v11    # "unitType":I
    .restart local v7    # "unitType":I
    goto :goto_fc

    .line 248
    .end local v7    # "unitType":I
    .restart local v11    # "unitType":I
    :cond_f9
    const/4 v7, 0x0

    return-object v7

    .line 238
    :cond_fb
    :goto_fb
    const/4 v7, 0x1

    .line 251
    .end local v11    # "unitType":I
    .restart local v7    # "unitType":I
    :goto_fc
    float-to-int v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 252
    .local v8, "complex":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit16 v9, v9, -0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 253
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    shl-int/lit8 v11, v12, 0x4

    or-int/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 254
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    or-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 255
    .end local v8    # "complex":Ljava/lang/Integer;
    .local v0, "complex":Ljava/lang/Integer;
    nop

    .line 258
    return-object v0

    .line 204
    .end local v0    # "complex":Ljava/lang/Integer;
    .end local v7    # "unitType":I
    .restart local v11    # "unitType":I
    :catch_121
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    return-object v7

    .line 201
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_124
    const/4 v7, 0x0

    .line 256
    return-object v7
.end method
