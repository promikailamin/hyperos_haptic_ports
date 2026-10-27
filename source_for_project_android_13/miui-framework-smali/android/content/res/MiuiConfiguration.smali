.class public Landroid/content/res/MiuiConfiguration;
.super Ljava/lang/Object;
.source "MiuiConfiguration.java"

# interfaces
.implements Landroid/content/res/IMiuiConfiguration;


# static fields
.field private static blacklist BASE_RESTART_FLAG:J = 0x0L

.field public static final whitelist CONTACTS_PKG_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final blacklist KEY_FONT_VAR_WEIGTH:Ljava/lang/String; = "font_var_weight"

.field public static final blacklist KEY_VAR_FONT_SCALE:Ljava/lang/String; = "key_var_font_scale"

.field public static final whitelist LAUNCHER_PKG_NAME:Ljava/lang/String; = "com.miui.home"

.field public static final whitelist MMS_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final whitelist SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final whitelist SYSTEM_INTEREST_CHANGE_FLAG:J = 0x10007899L

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiConfiguration"

.field public static final whitelist THEME_FLAG_ALARM:J = 0x400L

.field public static final whitelist THEME_FLAG_ALARMSTYLE:J = 0x100000L

.field public static final whitelist THEME_FLAG_AUDIO_EFFECT:J = 0x8000L

.field public static final whitelist THEME_FLAG_BOOT_ANIMATION:J = 0x20L

.field public static final whitelist THEME_FLAG_BOOT_AUDIO:J = 0x40L

.field public static final whitelist THEME_FLAG_CLOCK:J = 0x10000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist THEME_FLAG_CLOCK_1x2:J = 0x800000L

.field public static final whitelist THEME_FLAG_CLOCK_2x2:J = 0x1000000L

.field public static final whitelist THEME_FLAG_CLOCK_2x4:J = 0x2000000L

.field public static final whitelist THEME_FLAG_CONTACT:J = 0x800L

.field public static final whitelist THEME_FLAG_FONT:J = 0x10L

.field public static final whitelist THEME_FLAG_FRAMEWORK:J = 0x1L

.field public static final whitelist THEME_FLAG_FREE_HOME:J = 0x400000L

.field public static final whitelist THEME_FLAG_FREE_HOME_DEPRECATED:J = 0x200000L

.field public static final whitelist THEME_FLAG_ICON:J = 0x8L

.field public static final whitelist THEME_FLAG_LAST:J = 0x8000000L

.field public static final whitelist THEME_FLAG_LAUNCHER:J = 0x4000L

.field public static final whitelist THEME_FLAG_LOCKSCREEN:J = 0x4L

.field public static final whitelist THEME_FLAG_LOCKSTYLE:J = 0x1000L

.field public static final whitelist THEME_FLAG_MIWALLPAPER:J = 0x80000L

.field public static final whitelist THEME_FLAG_MMS:J = 0x80L

.field public static final whitelist THEME_FLAG_NOTIFICATION:J = 0x200L

.field public static final whitelist THEME_FLAG_PHOTO_FRAME:J = 0x20000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist THEME_FLAG_PHOTO_FRAME_2x2:J = 0x4000000L

.field public static final whitelist THEME_FLAG_PHOTO_FRAME_2x4:J = 0x8000000L

.field public static final whitelist THEME_FLAG_PHOTO_FRAME_4x4:J = 0x40000L

.field public static final whitelist THEME_FLAG_RINGTONE:J = 0x100L

.field public static final whitelist THEME_FLAG_STATUSBAR:J = 0x2000L

.field public static final whitelist THEME_FLAG_THIRD_APP:J = 0x10000000L

.field public static final blacklist THEME_FLAG_VAR_FONT:J = 0x20000000L

.field public static final whitelist THEME_FLAG_WALLPAPER:J = 0x2L

.field public static final whitelist THEME_FONT_FLAGS:J = 0x10L

.field public static final blacklist UI_MODE_TYPE_SCALE_EXTRAL_SMALL:I = 0xa

.field public static final whitelist UI_MODE_TYPE_SCALE_GODZILLA:I = 0xb

.field public static final whitelist UI_MODE_TYPE_SCALE_HUGE:I = 0xf

.field public static final whitelist UI_MODE_TYPE_SCALE_LARGE:I = 0xe

.field public static final whitelist UI_MODE_TYPE_SCALE_MEDIUM:I = 0xd

.field public static final whitelist UI_MODE_TYPE_SCALE_SMALL:I = 0xc

.field private static blacklist sForceScreenLayoutSize:I

.field private static blacklist sHadReadForceScreenLayoutSize:Z


# instance fields
.field public blacklist extraData:Landroid/os/Bundle;

.field private blacklist lastFontThemeChanged:I

.field public whitelist themeChanged:I

.field public whitelist themeChangedFlags:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 296
    const-wide/16 v0, 0x19

    sput-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    .line 350
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    .line 351
    const/4 v0, -0x1

    sput v0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    .line 96
    return-void
.end method

.method public static blacklist getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;
    .registers 3
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .line 268
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    instance-of v0, v0, Landroid/content/res/MiuiConfiguration;

    if-eqz v0, :cond_b

    .line 269
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    check-cast v0, Landroid/content/res/MiuiConfiguration;

    return-object v0

    .line 271
    :cond_b
    const-string v0, "MiuiConfiguration"

    const-string v1, "getExtraConfig failed, null or not MiuiConfiguration."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getFontScale(I)F
    .registers 3
    .param p0, "fontUiMode"    # I

    .line 371
    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_56

    .line 385
    return v0

    .line 381
    :pswitch_6
    const v0, 0x3faa3d71    # 1.33f

    const-string v1, "hugeui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 379
    :pswitch_14
    const v0, 0x3f95c28f    # 1.17f

    const-string v1, "largeui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 377
    :pswitch_22
    const-string v1, "mediumui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 375
    :pswitch_2d
    const v0, 0x3f6b851f    # 0.92f

    const-string v1, "smallui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 383
    :pswitch_3b
    const/high16 v0, 0x3fc00000    # 1.5f

    const-string v1, "godzillaui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 373
    :pswitch_48
    const v0, 0x3f4f5c29    # 0.81f

    const-string v1, "extral_smallui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :pswitch_data_56
    .packed-switch 0xa
        :pswitch_48
        :pswitch_3b
        :pswitch_2d
        :pswitch_22
        :pswitch_14
        :pswitch_6
    .end packed-switch
.end method

.method public static whitelist getScaleMode()I
    .registers 4

    .line 326
    const/4 v0, 0x1

    .line 328
    .local v0, "scale":I
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 329
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_28

    .line 330
    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_29

    const/16 v3, 0xf

    and-int/lit8 v0, v2, 0xf

    .line 331
    const/16 v2, 0xa

    if-eq v0, v2, :cond_28

    const/16 v2, 0xc

    if-eq v0, v2, :cond_28

    const/16 v2, 0xd

    if-eq v0, v2, :cond_28

    const/16 v2, 0xe

    if-eq v0, v2, :cond_28

    if-eq v0, v3, :cond_28

    const/16 v2, 0xb

    if-eq v0, v2, :cond_28

    .line 337
    const/4 v0, 0x1

    .line 341
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_28
    goto :goto_2a

    .line 340
    :catch_29
    move-exception v1

    .line 342
    :goto_2a
    return v0
.end method

.method public static whitelist needNewResources(I)Z
    .registers 2
    .param p0, "configChanges"    # I

    .line 169
    const/high16 v0, 0x400000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static whitelist needRestart3rdApp(J)Z
    .registers 6
    .param p0, "themeChangeFlags"    # J

    .line 311
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static whitelist needRestartActivity(Ljava/lang/String;J)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "themeChangeFlags"    # J

    .line 282
    if-eqz p0, :cond_29

    .line 283
    const-string v0, "com.miui.home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 284
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartLauncher(J)Z

    move-result v0

    return v0

    .line 286
    :cond_f
    const-string v0, "com.android.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 287
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartMms(J)Z

    move-result v0

    return v0

    .line 289
    :cond_1c
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 290
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartContacts(J)Z

    move-result v0

    return v0

    .line 293
    :cond_29
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestart3rdApp(J)Z

    move-result v0

    return v0
.end method

.method public static whitelist needRestartContacts(J)Z
    .registers 6
    .param p0, "themeChangeFlags"    # J

    .line 307
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist needRestartLauncher(J)Z
    .registers 6
    .param p0, "themeChangeFlags"    # J

    .line 299
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist needRestartMms(J)Z
    .registers 6
    .param p0, "themeChangeFlags"    # J

    .line 303
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist needRestartStatusBar(J)Z
    .registers 6
    .param p0, "themeChangeFlags"    # J

    .line 315
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static blacklist relunchFlag(Ljava/lang/String;)I
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 160
    const-string v0, "com.android.thememanager"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 161
    const-string v0, "com.android.provision"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 164
    :cond_11
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_13
    :goto_13
    const/high16 v0, 0x400000

    return v0
.end method

.method public static whitelist resetScreenLayoutSize(I)I
    .registers 5
    .param p0, "defaultScreenLayoutSize"    # I

    .line 353
    sget-boolean v0, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    const/4 v1, -0x1

    if-nez v0, :cond_3a

    .line 354
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    .line 355
    const-string v2, "ro.miui.screen_layout_size"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "forceScreenLayoutSizeConfig":Ljava/lang/String;
    const-string v3, "small"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_38

    .line 358
    :cond_19
    const-string v0, "normal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x2

    goto :goto_38

    .line 359
    :cond_23
    const-string v0, "large"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x3

    goto :goto_38

    .line 360
    :cond_2d
    const-string v0, "xlarge"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x4

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    sput v0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    .line 362
    .end local v2    # "forceScreenLayoutSizeConfig":Ljava/lang/String;
    :cond_3a
    sget v0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    if-ne v0, v1, :cond_3f

    move v0, p0

    :cond_3f
    return v0
.end method

.method public static whitelist sendThemeConfigurationChangeMsg(J)V
    .registers 3
    .param p0, "changeFlag"    # J

    .line 261
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/MiuiConfiguration;->sendThemeConfigurationChangeMsg(JLandroid/os/Bundle;)V

    .line 262
    return-void
.end method

.method public static whitelist sendThemeConfigurationChangeMsg(JLandroid/os/Bundle;)V
    .registers 11
    .param p0, "changeFlag"    # J
    .param p2, "data"    # Landroid/os/Bundle;

    .line 225
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_78

    .line 226
    const-wide/16 v2, 0x10

    and-long/2addr v2, p0

    cmp-long v2, v2, v0

    if-nez v2, :cond_15

    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_18

    .line 228
    :cond_15
    invoke-static {}, Lmiui/util/font/SymlinkUtils;->syncFontForWebView()V

    .line 231
    :cond_18
    :try_start_18
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 232
    .local v0, "curConfig":Landroid/content/res/Configuration;
    invoke-static {v0}, Landroid/content/res/MiuiConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v1

    .line 233
    .local v1, "miuiConfig":Landroid/content/res/MiuiConfiguration;
    invoke-virtual {v1, p0, p1}, Landroid/content/res/MiuiConfiguration;->updateTheme(J)V

    .line 234
    iget-object v2, v1, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    monitor-enter v2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2a} :catch_74

    .line 236
    :try_start_2a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v3, "newData":Landroid/os/Bundle;
    if-eqz p2, :cond_34

    .line 238
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 240
    :cond_34
    const-string v4, "key_var_font_scale"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 241
    .local v4, "fontScale":I
    if-ne v4, v5, :cond_46

    .line 242
    const-string v5, "key_var_font_scale"

    invoke-static {}, Lmiui/util/font/FontSettings;->readFontSettingScale()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    :cond_46
    iget-object v5, v1, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 246
    .end local v3    # "newData":Landroid/os/Bundle;
    .end local v4    # "fontScale":I
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_2a .. :try_end_4c} :catchall_71

    .line 249
    :try_start_4c
    const-class v2, Landroid/app/IActivityManager;

    const-string v3, "updateConfiguration"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/Configuration;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 250
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_67} :catch_68
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_67} :catch_74

    .line 253
    goto :goto_70

    .line 251
    :catch_68
    move-exception v2

    .line 252
    .local v2, "e":Ljava/lang/Exception;
    :try_start_69
    const-string v3, "MiuiConfiguration"

    const-string v4, "updateConfiguration failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_70} :catch_74

    .line 256
    .end local v0    # "curConfig":Landroid/content/res/Configuration;
    .end local v1    # "miuiConfig":Landroid/content/res/MiuiConfiguration;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_70
    goto :goto_78

    .line 246
    .restart local v0    # "curConfig":Landroid/content/res/Configuration;
    .restart local v1    # "miuiConfig":Landroid/content/res/MiuiConfiguration;
    :catchall_71
    move-exception v3

    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    .end local p0    # "changeFlag":J
    .end local p2    # "data":Landroid/os/Bundle;
    :try_start_73
    throw v3
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_74} :catch_74

    .line 254
    .end local v0    # "curConfig":Landroid/content/res/Configuration;
    .end local v1    # "miuiConfig":Landroid/content/res/MiuiConfiguration;
    .restart local p0    # "changeFlag":J
    .restart local p2    # "data":Landroid/os/Bundle;
    :catch_74
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_78
    :goto_78
    return-void
.end method

.method private blacklist setExtraData(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "otherData"    # Landroid/os/Bundle;

    .line 214
    iget-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 216
    if-eqz p1, :cond_15

    .line 217
    monitor-enter p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_17

    .line 218
    :try_start_b
    iget-object v1, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 219
    monitor-exit p1

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    .end local p0    # "this":Landroid/content/res/MiuiConfiguration;
    .end local p1    # "otherData":Landroid/os/Bundle;
    :try_start_14
    throw v1

    .line 221
    .restart local p0    # "this":Landroid/content/res/MiuiConfiguration;
    .restart local p1    # "otherData":Landroid/os/Bundle;
    :cond_15
    :goto_15
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_17

    throw v1
.end method


# virtual methods
.method public whitelist checkFontChange(I)Z
    .registers 3
    .param p1, "sinceThemeChanged"    # I

    .line 210
    if-ltz p1, :cond_8

    iget v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    if-ge p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist compareTo(Landroid/content/res/IMiuiConfiguration;)I
    .registers 4
    .param p1, "config"    # Landroid/content/res/IMiuiConfiguration;

    .line 190
    instance-of v0, p1, Landroid/content/res/MiuiConfiguration;

    if-eqz v0, :cond_d

    .line 191
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    move-object v1, p1

    check-cast v1, Landroid/content/res/MiuiConfiguration;

    iget v1, v1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sub-int/2addr v0, v1

    return v0

    .line 193
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 17
    check-cast p1, Landroid/content/res/IMiuiConfiguration;

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiConfiguration;->compareTo(Landroid/content/res/IMiuiConfiguration;)I

    move-result p1

    return p1
.end method

.method public whitelist diff(Landroid/content/res/IMiuiConfiguration;)I
    .registers 6
    .param p1, "b"    # Landroid/content/res/IMiuiConfiguration;

    .line 147
    instance-of v0, p1, Landroid/content/res/IMiuiConfiguration;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 148
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/content/res/MiuiConfiguration;

    .line 149
    .local v0, "delta":Landroid/content/res/MiuiConfiguration;
    const/4 v1, 0x0

    .line 150
    .local v1, "changed":I
    iget v2, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v3, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    if-ge v2, v3, :cond_13

    .line 151
    const/high16 v2, 0x400000

    or-int/2addr v1, v2

    .line 153
    :cond_13
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 198
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    .line 186
    return-void
.end method

.method public whitelist setTo(Landroid/content/res/IMiuiConfiguration;)V
    .registers 5
    .param p1, "b"    # Landroid/content/res/IMiuiConfiguration;

    .line 100
    instance-of v0, p1, Landroid/content/res/MiuiConfiguration;

    if-eqz v0, :cond_18

    .line 101
    move-object v0, p1

    check-cast v0, Landroid/content/res/MiuiConfiguration;

    .line 102
    .local v0, "o":Landroid/content/res/MiuiConfiguration;
    iget v1, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 103
    iget-wide v1, v0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    iput-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 104
    iget v1, v0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    iput v1, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 105
    iget-object v1, v0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/content/res/MiuiConfiguration;->setExtraData(Landroid/os/Bundle;)V

    .line 107
    .end local v0    # "o":Landroid/content/res/MiuiConfiguration;
    :cond_18
    return-void
.end method

.method public whitelist setToDefaults()V
    .registers 4

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 123
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 124
    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 125
    iget-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    monitor-enter v0

    .line 126
    :try_start_c
    iget-object v1, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " themeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, " themeChangedFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, " extraData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist updateFrom(Landroid/content/res/IMiuiConfiguration;)I
    .registers 6
    .param p1, "b"    # Landroid/content/res/IMiuiConfiguration;

    .line 132
    instance-of v0, p1, Landroid/content/res/IMiuiConfiguration;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 133
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/content/res/MiuiConfiguration;

    .line 134
    .local v0, "delta":Landroid/content/res/MiuiConfiguration;
    const/4 v1, 0x0

    .line 135
    .local v1, "changed":I
    iget v2, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v3, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    if-ge v2, v3, :cond_22

    .line 136
    const/high16 v2, 0x400000

    or-int/2addr v1, v2

    .line 137
    iput v3, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 138
    iget-wide v2, v0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    iput-wide v2, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 139
    iget v2, v0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    iput v2, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 140
    iget-object v2, v0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Landroid/content/res/MiuiConfiguration;->setExtraData(Landroid/os/Bundle;)V

    .line 142
    :cond_22
    return v1
.end method

.method public whitelist updateTheme(J)V
    .registers 8
    .param p1, "changedFlags"    # J

    .line 202
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 203
    iput-wide p1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 204
    const-wide/16 v1, 0x10

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_13

    .line 205
    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 207
    :cond_13
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 173
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    monitor-enter v0

    .line 177
    :try_start_12
    iget-object v1, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 178
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v1
.end method
