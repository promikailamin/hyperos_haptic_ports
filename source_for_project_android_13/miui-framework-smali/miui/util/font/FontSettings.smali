.class public Lmiui/util/font/FontSettings;
.super Ljava/lang/Object;
.source "FontSettings.java"


# static fields
.field public static final blacklist DEFAULT_SCALE:I = 0x32

.field public static blacklist FONT_VAR_WEIGHT:[I = null

.field public static final blacklist HAS_MIUI_VAR_FONT:Z

.field private static final blacklist KEY_FONT_VAR_WEIGHT:Ljava/lang/String; = "key_miui_font_var_weight"

.field private static final blacklist KEY_FONT_WEIGHT:Ljava/lang/String; = "key_miui_font_weight_scale"

.field public static final blacklist MIPRO_FILE:Ljava/lang/String;

.field public static final blacklist MISANS_SPECIFIED:Ljava/lang/String; = "/data/system/theme/fonts/Misans_Specified.ttf"

.field public static final blacklist MITYPE_FILE:Ljava/lang/String; = "/system/fonts/MitypeVF.ttf"

.field public static final blacklist MITYPE_MONO_FILE:Ljava/lang/String; = "/system/fonts/MitypeMonoVF.ttf"

.field public static final blacklist NORMAL_TEXT_SIZE:F = 16.0f

.field public static final blacklist ROBOTO_THEME_FILE:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Regular.ttf"

.field private static final blacklist TAG:Ljava/lang/String; = "FontSettings"

.field public static final blacklist THEME_FONTS_FOLDER:Ljava/lang/String; = "/data/system/theme/fonts/"

.field public static final blacklist THEME_VF_FILE:Ljava/lang/String; = "/data/system/theme/fonts/MI_Theme_VF.ttf"

.field public static final blacklist VF_CACHE_COUNT:I = 0xa

.field private static final blacklist WEIGHT_LEVEL_COUNT:I = 0xa

.field private static blacklist sFontScale:Ljava/lang/Integer;

.field public static blacklist sIsMiSansSpecified:Ljava/lang/Boolean;

.field public static blacklist sIsUsingThemeFont:Ljava/lang/Boolean;

.field public static blacklist sIsUsingThemeVF:Ljava/lang/Boolean;

.field private static blacklist sLocaleList:Landroid/os/LocaleList;

.field public static blacklist sUiMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 32
    const-string v0, "ro.miui.ui.font.mi_font_path"

    const-string v1, "/system/fonts/MiSansVF.ttf"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/font/FontSettings;->MIPRO_FILE:Ljava/lang/String;

    .line 50
    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_22

    sput-object v1, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lmiui/util/font/FontSettings;->HAS_MIUI_VAR_FONT:Z

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lmiui/util/font/FontSettings;->sLocaleList:Landroid/os/LocaleList;

    return-void

    :array_22
    .array-data 4
        0x96
        0xc8
        0xfa
        0x131
        0x14a
        0x17c
        0x1c2
        0x208
        0x276
        0x2bc
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkFontVarWeight()Z
    .registers 2

    .line 249
    sget-object v0, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I

    if-eqz v0, :cond_b

    array-length v0, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static blacklist checkMiSansSpecified()V
    .registers 2

    .line 245
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/fonts/Misans_Specified.ttf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiui/util/font/FontSettings;->sIsMiSansSpecified:Ljava/lang/Boolean;

    .line 246
    return-void
.end method

.method public static blacklist checkUsingThemeFont()V
    .registers 2

    .line 234
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/fonts/Roboto-Regular.ttf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiui/util/font/FontSettings;->sIsUsingThemeFont:Ljava/lang/Boolean;

    .line 235
    invoke-static {}, Lmiui/util/font/FontSettings;->isMiuiFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lmiui/util/font/FontSettings;->isMiSansSpecified()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 236
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiui/util/font/FontSettings;->sIsUsingThemeFont:Ljava/lang/Boolean;

    .line 238
    :cond_24
    return-void
.end method

.method public static blacklist checkUsingThemeVF()V
    .registers 2

    .line 241
    invoke-static {}, Lmiui/util/font/FontSettings;->isUsingThemeFont()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/fonts/MI_Theme_VF.ttf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiui/util/font/FontSettings;->sIsUsingThemeVF:Ljava/lang/Boolean;

    .line 242
    return-void
.end method

.method public static declared-synchronized blacklist getFontScale()I
    .registers 2

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 135
    :try_start_3
    sget-object v1, Lmiui/util/font/FontSettings;->sFontScale:Ljava/lang/Integer;

    if-nez v1, :cond_a

    const/16 v1, 0x32

    goto :goto_e

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :goto_e
    monitor-exit v0

    return v1

    .line 135
    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist getLocaleList()Landroid/os/LocaleList;
    .registers 5

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 111
    :try_start_3
    sget-object v1, Lmiui/util/font/FontSettings;->sLocaleList:Landroid/os/LocaleList;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_12

    .line 114
    :cond_e
    sget-object v1, Lmiui/util/font/FontSettings;->sLocaleList:Landroid/os/LocaleList;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_28

    monitor-exit v0

    return-object v1

    .line 112
    :cond_12
    :goto_12
    :try_start_12
    new-instance v1, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    const/4 v3, 0x0

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_1f

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_21

    :cond_1f
    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    :goto_21
    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_28

    monitor-exit v0

    return-object v1

    .line 110
    :catchall_28
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist getPreferredLocale()Ljava/util/Locale;
    .registers 3

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 108
    :try_start_3
    invoke-static {}, Lmiui/util/font/FontSettings;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-object v1

    .line 108
    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist getWeightsSettings(Landroid/content/Context;)[I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 160
    if-eqz p0, :cond_51

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_55

    if-eqz v1, :cond_10

    goto :goto_51

    .line 164
    :cond_10
    const/4 v1, 0x0

    .line 166
    .local v1, "value":Ljava/lang/String;
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_miui_font_var_weight"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1b} :catch_4c
    .catchall {:try_start_11 .. :try_end_1b} :catchall_55

    move-object v1, v2

    .line 169
    nop

    .line 171
    if-nez v1, :cond_23

    .line 172
    :try_start_1f
    sget-object v2, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_55

    monitor-exit v0

    return-object v2

    .line 174
    :cond_23
    :try_start_23
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "elements":[Ljava/lang/String;
    if-eqz v2, :cond_48

    array-length v3, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_31

    goto :goto_48

    .line 178
    :cond_31
    new-array v3, v4, [I
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_55

    .line 179
    .local v3, "weights":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    if-ge v5, v4, :cond_46

    .line 181
    :try_start_36
    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_3e} :catch_42
    .catchall {:try_start_36 .. :try_end_3e} :catchall_55

    .line 185
    nop

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 182
    :catch_42
    move-exception v4

    .line 183
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_43
    sget-object v6, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_55

    move-object v3, v6

    .line 187
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "i":I
    :cond_46
    monitor-exit v0

    return-object v3

    .line 176
    .end local v3    # "weights":[I
    :cond_48
    :goto_48
    :try_start_48
    sget-object v3, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_55

    monitor-exit v0

    return-object v3

    .line 167
    .end local v2    # "elements":[Ljava/lang/String;
    :catch_4c
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_4d
    sget-object v3, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_55

    monitor-exit v0

    return-object v3

    .line 161
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_51
    :goto_51
    :try_start_51
    sget-object v1, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_55

    monitor-exit v0

    return-object v1

    .line 159
    .end local p0    # "context":Landroid/content/Context;
    :catchall_55
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized blacklist isMiSansSpecified()Z
    .registers 2

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 227
    :try_start_3
    sget-object v1, Lmiui/util/font/FontSettings;->sIsMiSansSpecified:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 228
    invoke-static {}, Lmiui/util/font/FontSettings;->checkMiSansSpecified()V

    .line 230
    :cond_a
    sget-object v1, Lmiui/util/font/FontSettings;->sIsMiSansSpecified:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return v1

    .line 226
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist isMiuiFontEnabled()Z
    .registers 1

    .line 59
    sget-boolean v0, Lmiui/util/font/FontSettings;->HAS_MIUI_VAR_FONT:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lmiui/util/font/FontSettings;->isMiuiOptimizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_14

    .line 60
    invoke-static {}, Lmiui/util/font/FontSettings;->isMiSansSpecified()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 59
    :goto_17
    return v0
.end method

.method public static blacklist isMiuiOptimizeEnabled()Z
    .registers 2

    .line 64
    const-string v0, "persist.sys.miui_optimization"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized blacklist isUsingThemeFont()Z
    .registers 2

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 213
    :try_start_3
    sget-object v1, Lmiui/util/font/FontSettings;->sIsUsingThemeFont:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 214
    invoke-static {}, Lmiui/util/font/FontSettings;->checkUsingThemeFont()V

    .line 216
    :cond_a
    sget-object v1, Lmiui/util/font/FontSettings;->sIsUsingThemeFont:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return v1

    .line 212
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist isUsingThemeVF()Z
    .registers 2

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 220
    :try_start_3
    sget-object v1, Lmiui/util/font/FontSettings;->sIsUsingThemeVF:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 221
    invoke-static {}, Lmiui/util/font/FontSettings;->checkUsingThemeVF()V

    .line 223
    :cond_a
    sget-object v1, Lmiui/util/font/FontSettings;->sIsUsingThemeVF:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return v1

    .line 219
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist loadFontSetting(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 83
    if-eqz p0, :cond_48

    .line 84
    :try_start_5
    sget-object v1, Lmiui/util/font/FontSettings;->sFontScale:Ljava/lang/Integer;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_53

    if-nez v1, :cond_38

    .line 86
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_miui_font_weight_scale"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, "fontScale":I
    if-gez v1, :cond_23

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_miui_font_weight_scale"

    const/16 v4, 0x32

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    .line 92
    :cond_23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lmiui/util/font/FontSettings;->sFontScale:Ljava/lang/Integer;

    .line 93
    invoke-static {p0}, Lmiui/util/font/FontSettings;->getWeightsSettings(Landroid/content/Context;)[I

    move-result-object v2

    sput-object v2, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_30
    .catchall {:try_start_9 .. :try_end_2f} :catchall_53

    .line 96
    .end local v1    # "fontScale":I
    goto :goto_38

    .line 94
    :catch_30
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v2, "FontSettings"

    const-string v3, "FontSettings.loadFontSetting failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_38
    :goto_38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-static {v1}, Lmiui/util/font/FontSettings;->updateUiMode(I)V

    .line 99
    invoke-static {p0}, Lmiui/util/font/FontSettings;->updateLocaleList(Landroid/content/Context;)Z

    .line 101
    :cond_48
    invoke-static {}, Lmiui/util/font/FontSettings;->checkMiSansSpecified()V

    .line 102
    invoke-static {}, Lmiui/util/font/FontSettings;->checkUsingThemeFont()V

    .line 103
    invoke-static {}, Lmiui/util/font/FontSettings;->checkUsingThemeVF()V
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_53

    .line 104
    monitor-exit v0

    return-void

    .line 82
    .end local p0    # "context":Landroid/content/Context;
    :catchall_53
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist readFontSettingScale()I
    .registers 6

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 253
    :try_start_3
    invoke-static {}, Lmiui/util/TypefaceUtils;->getContext()Landroid/content/Context;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_31

    .line 254
    .local v1, "ctx":Landroid/content/Context;
    const/16 v2, 0x32

    if-eqz v1, :cond_2f

    .line 256
    :try_start_b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_miui_font_weight_scale"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 258
    .local v3, "fontScale":I
    if-gez v3, :cond_23

    .line 259
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_miui_font_weight_scale"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_25
    .catchall {:try_start_b .. :try_end_22} :catchall_31

    move v3, v2

    .line 262
    :cond_23
    monitor-exit v0

    return v3

    .line 263
    .end local v3    # "fontScale":I
    :catch_25
    move-exception v3

    .line 264
    .local v3, "e":Ljava/lang/Exception;
    :try_start_26
    const-string v4, "FontSettings"

    const-string v5, "FontSettings.readFontSettingScale failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_31

    .line 265
    monitor-exit v0

    return v2

    .line 268
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2f
    monitor-exit v0

    return v2

    .line 252
    .end local v1    # "ctx":Landroid/content/Context;
    :catchall_31
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist setWeightsSettings(Landroid/content/Context;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 191
    if-eqz p0, :cond_55

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_55

    .line 194
    :cond_10
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_50

    const-string v2, "com.android.settings|com.android.thememanager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_50

    .line 198
    :cond_1f
    invoke-static {}, Lmiui/util/font/FontSettings;->checkFontVarWeight()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v2, "value":Ljava/lang/StringBuilder;
    sget-object v3, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v4, :cond_3f

    aget v6, v3, v5

    .line 201
    .local v6, "element":I
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_52

    .line 200
    nop

    .end local v6    # "element":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 204
    :cond_3f
    :try_start_3f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_miui_font_var_weight"

    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_4c} :catch_4d
    .catchall {:try_start_3f .. :try_end_4c} :catchall_52

    .line 208
    goto :goto_4e

    .line 206
    :catch_4d
    move-exception v3

    .line 210
    .end local v2    # "value":Ljava/lang/StringBuilder;
    :cond_4e
    :goto_4e
    monitor-exit v0

    return-void

    .line 196
    :cond_50
    :goto_50
    monitor-exit v0

    return-void

    .line 190
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_52
    move-exception p0

    monitor-exit v0

    throw p0

    .line 192
    .restart local p0    # "context":Landroid/content/Context;
    :cond_55
    :goto_55
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized blacklist updateLocaleList(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 118
    if-eqz p0, :cond_2a

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/font/FontSettings;->updateLocaleList(Landroid/os/LocaleList;)Z

    move-result v1
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_27

    monitor-exit v0

    return v1

    .line 117
    .end local p0    # "context":Landroid/content/Context;
    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0

    .line 122
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2a
    const/4 v1, 0x0

    monitor-exit v0

    return v1
.end method

.method public static declared-synchronized blacklist updateLocaleList(Landroid/os/LocaleList;)Z
    .registers 5
    .param p0, "localeList"    # Landroid/os/LocaleList;

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 125
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_13

    :try_start_7
    sget-object v3, Lmiui/util/font/FontSettings;->sLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p0, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move v3, v1

    goto :goto_14

    .line 124
    .end local p0    # "localeList":Landroid/os/LocaleList;
    :catchall_11
    move-exception p0

    goto :goto_1d

    .line 125
    .restart local p0    # "localeList":Landroid/os/LocaleList;
    :cond_13
    move v3, v2

    .line 126
    .local v3, "hasLocalListChanged":Z
    :goto_14
    if-eqz v3, :cond_1f

    .line 127
    sput-object p0, Lmiui/util/font/FontSettings;->sLocaleList:Landroid/os/LocaleList;

    .line 128
    invoke-static {p0}, Lmiui/util/font/MultiLangHelper;->setTextOverlap(Landroid/os/LocaleList;)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_11

    .line 129
    monitor-exit v0

    return v1

    .line 124
    .end local v3    # "hasLocalListChanged":Z
    .end local p0    # "localeList":Landroid/os/LocaleList;
    :goto_1d
    monitor-exit v0

    throw p0

    .line 131
    .restart local v3    # "hasLocalListChanged":Z
    .restart local p0    # "localeList":Landroid/os/LocaleList;
    :cond_1f
    monitor-exit v0

    return v2
.end method

.method public static declared-synchronized blacklist updateScaleSetting(Landroid/content/res/MiuiConfiguration;)Z
    .registers 7
    .param p0, "config"    # Landroid/content/res/MiuiConfiguration;

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_57

    .line 140
    iget-object v1, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    const-string v3, "font_var_weight"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 141
    .local v1, "weights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_2d

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lmiui/util/font/FontSettings$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lmiui/util/font/FontSettings$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    sput-object v3, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I

    .line 143
    invoke-static {}, Lmiui/util/TypefaceUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmiui/util/font/FontSettings;->setWeightsSettings(Landroid/content/Context;)V

    goto :goto_37

    .line 145
    :cond_2d
    invoke-static {}, Lmiui/util/TypefaceUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmiui/util/font/FontSettings;->getWeightsSettings(Landroid/content/Context;)[I

    move-result-object v3

    sput-object v3, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I

    .line 147
    :goto_37
    iget-object v3, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    const-string v4, "key_var_font_scale"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_59

    .line 148
    .local v3, "scale":I
    if-gez v3, :cond_44

    .line 149
    monitor-exit v0

    return v2

    .line 151
    :cond_44
    :try_start_44
    sget-object v4, Lmiui/util/font/FontSettings;->sFontScale:Ljava/lang/Integer;

    if-eqz v4, :cond_4e

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_57

    .line 152
    :cond_4e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lmiui/util/font/FontSettings;->sFontScale:Ljava/lang/Integer;
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_59

    .line 153
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 156
    .end local v1    # "weights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "scale":I
    :cond_57
    monitor-exit v0

    return v2

    .line 138
    .end local p0    # "config":Landroid/content/res/MiuiConfiguration;
    :catchall_59
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist updateUiMode(I)V
    .registers 3
    .param p0, "uiMode"    # I

    const-class v0, Lmiui/util/font/FontSettings;

    monitor-enter v0

    .line 79
    and-int/lit8 v1, p0, 0x30

    :try_start_5
    sput v1, Lmiui/util/font/FontSettings;->sUiMode:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9

    .line 80
    monitor-exit v0

    return-void

    .line 78
    .end local p0    # "uiMode":I
    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method
