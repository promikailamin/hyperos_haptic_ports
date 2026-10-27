.class public Lmiui/util/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TypefaceUtils"

.field private static final blacklist VARIATION_FONT_NAMES:[Ljava/lang/String;

.field public static blacklist sApplication:Landroid/app/Application;

.field private static blacklist sDefManager:Lmiui/util/font/DefaultFontManager;

.field private static blacklist sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static blacklist sManager:Lmiui/util/font/IFontManager;

.field private static blacklist sMiProManager:Lmiui/util/font/MiProFontManager;

.field private static blacklist sThemeManager:Lmiui/util/font/ThemeFontManager;

.field private static blacklist sThemeVFManager:Lmiui/util/font/ThemeVFManager;

.field private static blacklist sTypefaceFontChecked:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const-string v0, "variation-miui-font"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils;->VARIATION_FONT_NAMES:[Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils;->sTypefaceFontChecked:Landroid/util/SparseBooleanArray;

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 47
    new-instance v0, Lmiui/util/font/DefaultFontManager;

    invoke-direct {v0}, Lmiui/util/font/DefaultFontManager;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils;->sDefManager:Lmiui/util/font/DefaultFontManager;

    .line 48
    new-instance v0, Lmiui/util/font/ThemeFontManager;

    invoke-direct {v0}, Lmiui/util/font/ThemeFontManager;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils;->sThemeManager:Lmiui/util/font/ThemeFontManager;

    .line 49
    new-instance v0, Lmiui/util/font/ThemeVFManager;

    invoke-direct {v0}, Lmiui/util/font/ThemeVFManager;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils;->sThemeVFManager:Lmiui/util/font/ThemeVFManager;

    .line 50
    new-instance v0, Lmiui/util/font/MiProFontManager;

    invoke-direct {v0}, Lmiui/util/font/MiProFontManager;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils;->sMiProManager:Lmiui/util/font/MiProFontManager;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
    .registers 7
    .param p0, "tf"    # Landroid/graphics/Typeface;
    .param p1, "textSize"    # F

    .line 107
    sget-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_99

    .line 109
    :try_start_d
    const-class v0, Lmiui/util/TypefaceUtils;

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_8e

    .line 110
    if-eqz p0, :cond_80

    :try_start_12
    sget-object v2, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    if-nez v2, :cond_17

    goto :goto_80

    .line 113
    :cond_17
    sget-object v2, Lmiui/util/TypefaceUtils;->sTypefaceFontChecked:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/graphics/Typeface;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 114
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_8b

    .line 130
    sget-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 114
    return-object p0

    .line 116
    :cond_2e
    :try_start_2e
    sget-object v2, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    sget-object v3, Lmiui/util/TypefaceUtils;->sThemeManager:Lmiui/util/font/ThemeFontManager;

    if-eq v2, v3, :cond_38

    sget-object v3, Lmiui/util/TypefaceUtils;->sDefManager:Lmiui/util/font/DefaultFontManager;

    if-ne v2, v3, :cond_49

    .line 117
    :cond_38
    invoke-interface {v2, p0}, Lmiui/util/font/IFontManager;->isFontMatched(Landroid/graphics/Typeface;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 118
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_8b

    .line 130
    sget-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 118
    return-object v1

    .line 120
    :cond_49
    :try_start_49
    invoke-static {p0}, Lmiui/util/font/FontNameUtil;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/util/TypefaceHelper;->FALLBACK_FONT:[Ljava/lang/String;

    if-ne v1, v2, :cond_60

    .line 121
    invoke-static {p0}, Lmiui/util/TypefaceHelper;->checkFallbackFont(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_8b

    .line 130
    sget-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 121
    return-object v1

    .line 123
    :cond_60
    const/4 v1, -0x1

    :try_start_61
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    invoke-static {p0, v1, v2, p1}, Lmiui/util/TypefaceUtils;->doGetReplacedFont(Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;

    move-result-object v1

    .line 124
    .local v1, "newFont":Landroid/graphics/Typeface;
    if-eqz v1, :cond_75

    .line 125
    sget-object v2, Lmiui/util/TypefaceUtils;->sTypefaceFontChecked:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 127
    :cond_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_61 .. :try_end_76} :catchall_8b

    .line 130
    sget-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 127
    return-object v1

    .line 111
    .end local v1    # "newFont":Landroid/graphics/Typeface;
    :cond_80
    :goto_80
    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_8b

    .line 130
    sget-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 111
    return-object v1

    .line 128
    :catchall_8b
    move-exception v1

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    .end local p0    # "tf":Landroid/graphics/Typeface;
    .end local p1    # "textSize":F
    :try_start_8d
    throw v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    .line 130
    .restart local p0    # "tf":Landroid/graphics/Typeface;
    .restart local p1    # "textSize":F
    :catchall_8e
    move-exception v0

    sget-object v1, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 131
    throw v0

    .line 133
    :cond_99
    return-object v1
.end method

.method private static declared-synchronized blacklist doGetReplacedFont(Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;
    .registers 8
    .param p0, "font"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "style"    # I
    .param p3, "textSize"    # F

    const-class v0, Lmiui/util/TypefaceUtils;

    monitor-enter v0

    .line 247
    :try_start_3
    sget-object v1, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    if-nez v1, :cond_9

    .line 248
    monitor-exit v0

    return-object p0

    .line 250
    :cond_9
    :try_start_9
    invoke-static {p0}, Lmiui/util/font/FontNameUtil;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "fontNames":[Ljava/lang/String;
    invoke-static {v1}, Lmiui/util/TypefaceUtils;->isUsingFontFile([Ljava/lang/String;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_25

    if-eqz v2, :cond_15

    .line 252
    monitor-exit v0

    return-object p0

    .line 254
    :cond_15
    if-eqz p0, :cond_1c

    :try_start_17
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 255
    .local v2, "fontStyle":I
    :goto_1d
    sget-object v3, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    invoke-interface {v3, p0, p1, p2, p3}, Lmiui/util/font/IFontManager;->getReplacedFont(Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_25

    monitor-exit v0

    return-object v3

    .line 246
    .end local v1    # "fontNames":[Ljava/lang/String;
    .end local v2    # "fontStyle":I
    .end local p0    # "font":Landroid/graphics/Typeface;
    .end local p1    # "weight":I
    .end local p2    # "style":I
    .end local p3    # "textSize":F
    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist getContext()Landroid/content/Context;
    .registers 1

    .line 68
    sget-object v0, Lmiui/util/TypefaceUtils;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_7

    .line 69
    invoke-static {}, Lmiui/util/TypefaceUtils;->initApplicationByReflect()V

    .line 71
    :cond_7
    sget-object v0, Lmiui/util/TypefaceUtils;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method private static blacklist getCurrentMgr()Lmiui/util/font/IFontManager;
    .registers 1

    .line 285
    invoke-static {}, Lmiui/util/font/FontSettings;->isUsingThemeVF()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 286
    sget-object v0, Lmiui/util/TypefaceUtils;->sThemeVFManager:Lmiui/util/font/ThemeVFManager;

    .local v0, "mgr":Lmiui/util/font/IFontManager;
    goto :goto_1d

    .line 287
    .end local v0    # "mgr":Lmiui/util/font/IFontManager;
    :cond_9
    invoke-static {}, Lmiui/util/font/FontSettings;->isUsingThemeFont()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 288
    sget-object v0, Lmiui/util/TypefaceUtils;->sThemeManager:Lmiui/util/font/ThemeFontManager;

    .restart local v0    # "mgr":Lmiui/util/font/IFontManager;
    goto :goto_1d

    .line 289
    .end local v0    # "mgr":Lmiui/util/font/IFontManager;
    :cond_12
    invoke-static {}, Lmiui/util/font/FontSettings;->isMiuiFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 290
    sget-object v0, Lmiui/util/TypefaceUtils;->sMiProManager:Lmiui/util/font/MiProFontManager;

    .restart local v0    # "mgr":Lmiui/util/font/IFontManager;
    goto :goto_1d

    .line 292
    .end local v0    # "mgr":Lmiui/util/font/IFontManager;
    :cond_1b
    sget-object v0, Lmiui/util/TypefaceUtils;->sDefManager:Lmiui/util/font/DefaultFontManager;

    .line 294
    .restart local v0    # "mgr":Lmiui/util/font/IFontManager;
    :goto_1d
    return-object v0
.end method

.method public static blacklist getReplacedFont(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;
    .registers 5
    .param p0, "font"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I
    .param p2, "textSize"    # F

    .line 199
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v0, p0, v1, p1, p2}, Lmiui/util/TypefaceUtils;->getReplacedFontSafety(Landroid/content/Context;Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getReplacedFontFamily(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/FontConfig$FontFamily;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "variant"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/text/FontConfig$FontFamily;"
        }
    .end annotation

    .line 228
    .local p0, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    const-string v0, "sans-serif"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 229
    .local v1, "isSansSerif":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_14

    const-string v4, "zh-"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v4, v2

    goto :goto_15

    :cond_14
    move v4, v3

    .line 230
    .local v4, "isZhFont":Z
    :goto_15
    const/4 v5, 0x0

    .line 231
    .local v5, "isRoboto":Z
    if-nez v1, :cond_1c

    if-eqz p1, :cond_1c

    if-eqz v4, :cond_51

    .line 232
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$Font;

    .line 233
    .local v7, "font":Landroid/text/FontConfig$Font;
    invoke-virtual {v7}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, "fontPath":Ljava/lang/String;
    const-string v9, "Roboto-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_47

    const-string v9, "RobotoStatic-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_45

    goto :goto_47

    :cond_45
    move v9, v3

    goto :goto_48

    :cond_47
    :goto_47
    move v9, v2

    :goto_48
    move v5, v9

    .line 236
    if-eqz v1, :cond_50

    if-nez v5, :cond_50

    .line 237
    const-string p1, "mi-sans-serif"

    .line 238
    goto :goto_51

    .line 240
    .end local v7    # "font":Landroid/text/FontConfig$Font;
    .end local v8    # "fontPath":Ljava/lang/String;
    :cond_50
    goto :goto_20

    .line 242
    :cond_51
    :goto_51
    if-nez p1, :cond_58

    if-eqz v5, :cond_58

    if-nez v4, :cond_58

    goto :goto_59

    :cond_58
    move-object v0, p1

    .line 243
    .local v0, "familyName":Ljava/lang/String;
    :goto_59
    new-instance v2, Landroid/text/FontConfig$FontFamily;

    invoke-static {p2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3, p3}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/os/LocaleList;I)V

    return-object v2
.end method

.method private static blacklist getReplacedFontSafety(Landroid/content/Context;Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "font"    # Landroid/graphics/Typeface;
    .param p2, "weight"    # I
    .param p3, "style"    # I
    .param p4, "textSize"    # F

    .line 203
    sget-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 205
    const/4 v0, 0x0

    :try_start_d
    invoke-static {p0, v0}, Lmiui/util/TypefaceUtils;->loadFontSettings(Landroid/content/Context;Z)V

    .line 206
    invoke-static {p1, p2, p3, p4}, Lmiui/util/TypefaceUtils;->doGetReplacedFont(Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_1e

    .line 208
    sget-object v1, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 206
    return-object v0

    .line 208
    :catchall_1e
    move-exception v0

    sget-object v1, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 209
    throw v0

    .line 211
    :cond_29
    const-string v0, "TypefaceUtils"

    const-string v1, "TypefaceUtil.getReplacedFont failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-object p1
.end method

.method public static blacklist getReplacedFontWithWeight(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;
    .registers 5
    .param p0, "font"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "style"    # I

    .line 195
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lmiui/util/TypefaceUtils;->getReplacedFontSafety(Landroid/content/Context;Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getStyle(Landroid/graphics/Typeface;)I
    .registers 2
    .param p0, "font"    # Landroid/graphics/Typeface;

    .line 268
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static blacklist initApplicationByReflect()V
    .registers 4

    .line 312
    :try_start_0
    sget-object v0, Lmiui/util/TypefaceUtils;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_22

    .line 313
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 314
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 315
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    sput-object v1, Lmiui/util/TypefaceUtils;->sApplication:Landroid/app/Application;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 319
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_22
    goto :goto_2b

    .line 317
    :catch_23
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TypefaceUtils"

    const-string v2, "TypefaceUtil.initApplicationByReflect failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public static blacklist isMiuiFont(Landroid/graphics/Typeface;)Z
    .registers 2
    .param p0, "font"    # Landroid/graphics/Typeface;

    .line 183
    invoke-static {p0}, Lmiui/util/font/FontNameUtil;->isMiuiFont(Landroid/graphics/Typeface;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMiuiVariationFont(Landroid/graphics/Typeface;)Z
    .registers 4
    .param p0, "family"    # Landroid/graphics/Typeface;

    .line 162
    sget-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 164
    :try_start_d
    sget-object v0, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    if-eqz v0, :cond_25

    sget-object v2, Lmiui/util/TypefaceUtils;->sMiProManager:Lmiui/util/font/MiProFontManager;

    if-eq v0, v2, :cond_1d

    sget-object v2, Lmiui/util/TypefaceUtils;->sThemeVFManager:Lmiui/util/font/ThemeVFManager;

    if-eq v0, v2, :cond_1d

    sget-object v2, Lmiui/util/TypefaceUtils;->sThemeManager:Lmiui/util/font/ThemeFontManager;

    if-ne v0, v2, :cond_25

    .line 166
    :cond_1d
    invoke-interface {v0, p0}, Lmiui/util/font/IFontManager;->isFontMatched(Landroid/graphics/Typeface;)Z

    move-result v0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_30

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    .line 168
    :goto_26
    sget-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 164
    return v1

    .line 168
    :catchall_30
    move-exception v0

    sget-object v1, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 169
    throw v0

    .line 171
    :cond_3b
    return v1
.end method

.method private static blacklist isUsingFontFile([Ljava/lang/String;)Z
    .registers 6
    .param p0, "familyName"    # [Ljava/lang/String;

    .line 259
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 260
    .local v3, "name":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 261
    const/4 v0, 0x1

    return v0

    .line 259
    .end local v3    # "name":Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 264
    :cond_14
    return v1
.end method

.method static synthetic blacklist lambda$recordApplication$0(Landroid/app/Application;)V
    .registers 4
    .param p0, "application"    # Landroid/app/Application;

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/TypefaceUtils;->loadFontSettings(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 63
    goto :goto_10

    .line 61
    :catch_8
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TypefaceUtils"

    const-string v2, "TypefaceUtil.loadFontSettings failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method

.method private static declared-synchronized blacklist loadFontManager(Lmiui/util/font/IFontManager;Z)V
    .registers 4
    .param p0, "mgr"    # Lmiui/util/font/IFontManager;
    .param p1, "shouldUpdate"    # Z

    const-class v0, Lmiui/util/TypefaceUtils;

    monitor-enter v0

    .line 272
    if-eqz p0, :cond_1f

    if-eqz p1, :cond_1f

    .line 273
    :try_start_7
    sget-object v1, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    if-eqz v1, :cond_e

    .line 274
    invoke-interface {v1}, Lmiui/util/font/IFontManager;->clearFont()V

    .line 276
    :cond_e
    sput-object p0, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    .line 277
    invoke-interface {p0}, Lmiui/util/font/IFontManager;->loadFont()V

    .line 278
    invoke-static {}, Lmiui/util/TypefaceUtils;->updateDefaultFont()V

    .line 279
    sget-object v1, Lmiui/util/TypefaceUtils;->sTypefaceFontChecked:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    goto :goto_1f

    .line 271
    .end local p0    # "mgr":Lmiui/util/font/IFontManager;
    .end local p1    # "shouldUpdate":Z
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0

    .line 281
    .restart local p0    # "mgr":Lmiui/util/font/IFontManager;
    .restart local p1    # "shouldUpdate":Z
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void
.end method

.method public static blacklist loadFontSettings(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    sget-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 77
    const/4 v0, 0x1

    :try_start_a
    invoke-static {p0, v0}, Lmiui/util/TypefaceUtils;->loadFontSettings(Landroid/content/Context;Z)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_18

    .line 79
    sget-object v0, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 80
    nop

    .line 81
    return-void

    .line 79
    :catchall_18
    move-exception v0

    sget-object v1, Lmiui/util/TypefaceUtils;->sLoadFontSettingsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 80
    throw v0
.end method

.method private static declared-synchronized blacklist loadFontSettings(Landroid/content/Context;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isWriteLocked"    # Z

    const-class v0, Lmiui/util/TypefaceUtils;

    monitor-enter v0

    .line 84
    move-object v1, p0

    .line 85
    .local v1, "ctx":Landroid/content/Context;
    if-nez p0, :cond_b

    .line 86
    :try_start_6
    invoke-static {}, Lmiui/util/TypefaceUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 88
    :cond_b
    invoke-static {}, Lmiui/util/TypefaceUtils;->getCurrentMgr()Lmiui/util/font/IFontManager;

    move-result-object v2

    .line 89
    .local v2, "mgr":Lmiui/util/font/IFontManager;
    sget-object v3, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    if-nez v3, :cond_1b

    sget-object v4, Lmiui/util/TypefaceUtils;->sDefManager:Lmiui/util/font/DefaultFontManager;

    if-ne v2, v4, :cond_1b

    .line 90
    sput-object v2, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_28

    .line 91
    monitor-exit v0

    return-void

    .line 93
    :cond_1b
    if-eqz v1, :cond_26

    if-eq v3, v2, :cond_26

    .line 94
    :try_start_1f
    invoke-static {v1}, Lmiui/util/font/FontSettings;->loadFontSetting(Landroid/content/Context;)V

    .line 95
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmiui/util/TypefaceUtils;->loadFontManager(Lmiui/util/font/IFontManager;Z)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_28

    .line 97
    :cond_26
    monitor-exit v0

    return-void

    .line 83
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "mgr":Lmiui/util/font/IFontManager;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "isWriteLocked":Z
    :catchall_28
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist onCreateWithVariation(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Ljava/util/List;)V
    .registers 5
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "font"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p2, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    if-eqz p0, :cond_18

    if-nez p1, :cond_5

    goto :goto_18

    .line 154
    :cond_5
    iget-object v0, p0, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    sget-object v1, Lmiui/util/TypefaceUtils;->VARIATION_FONT_NAMES:[Ljava/lang/String;

    if-ne v0, v1, :cond_e

    .line 155
    iput-object v1, p1, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    goto :goto_17

    .line 156
    :cond_e
    invoke-static {p0}, Lmiui/util/TypefaceUtils;->isMiuiVariationFont(Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 157
    invoke-static {p1, v1}, Lmiui/util/font/FontNameUtil;->setFontNames(Landroid/graphics/Typeface;[Ljava/lang/String;)V

    .line 159
    :cond_17
    :goto_17
    return-void

    .line 152
    :cond_18
    :goto_18
    return-void
.end method

.method public static blacklist onMiuiFontChanged(Landroid/content/res/MiuiConfiguration;Landroid/os/LocaleList;)V
    .registers 6
    .param p0, "config"    # Landroid/content/res/MiuiConfiguration;
    .param p1, "localeList"    # Landroid/os/LocaleList;

    .line 137
    invoke-static {}, Lmiui/util/font/FontSettings;->checkMiSansSpecified()V

    .line 138
    invoke-static {}, Lmiui/util/font/FontSettings;->checkUsingThemeFont()V

    .line 139
    invoke-static {}, Lmiui/util/font/FontSettings;->checkUsingThemeVF()V

    .line 140
    invoke-static {}, Lmiui/util/TypefaceUtils;->getCurrentMgr()Lmiui/util/font/IFontManager;

    move-result-object v0

    .line 141
    .local v0, "mgr":Lmiui/util/font/IFontManager;
    invoke-static {p1}, Lmiui/util/font/FontSettings;->updateLocaleList(Landroid/os/LocaleList;)Z

    move-result v1

    .line 142
    .local v1, "hasLocalListChanged":Z
    if-eqz v1, :cond_16

    .line 143
    invoke-static {}, Lmiui/util/TypefaceHelper;->clearFontCache()V

    .line 145
    :cond_16
    invoke-static {p0}, Lmiui/util/font/FontSettings;->updateScaleSetting(Landroid/content/res/MiuiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_31

    sget-object v2, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    if-ne v2, v0, :cond_31

    sget-object v3, Lmiui/util/TypefaceUtils;->sThemeManager:Lmiui/util/font/ThemeFontManager;

    if-eq v2, v3, :cond_31

    sget-object v3, Lmiui/util/TypefaceUtils;->sThemeVFManager:Lmiui/util/font/ThemeVFManager;

    if-eq v2, v3, :cond_31

    if-eqz v1, :cond_2f

    sget-object v2, Lmiui/util/TypefaceUtils;->sMiProManager:Lmiui/util/font/MiProFontManager;

    if-ne v2, v0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v2, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v2, 0x1

    :goto_32
    invoke-static {v0, v2}, Lmiui/util/TypefaceUtils;->loadFontManager(Lmiui/util/font/IFontManager;Z)V

    .line 148
    return-void
.end method

.method public static blacklist onUiModeChange(I)V
    .registers 3
    .param p0, "uiMode"    # I

    .line 100
    const-class v0, Lmiui/util/TypefaceUtils;

    monitor-enter v0

    .line 101
    :try_start_3
    sget-object v1, Lmiui/util/TypefaceUtils;->sTypefaceFontChecked:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 102
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 103
    invoke-static {p0}, Lmiui/util/font/FontSettings;->updateUiMode(I)V

    .line 104
    return-void

    .line 102
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static blacklist recordApplication(Landroid/app/Application;)V
    .registers 3
    .param p0, "application"    # Landroid/app/Application;

    .line 54
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1d

    .line 57
    :cond_d
    sput-object p0, Lmiui/util/TypefaceUtils;->sApplication:Landroid/app/Application;

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/util/TypefaceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiui/util/TypefaceUtils$$ExternalSyntheticLambda0;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    return-void

    .line 55
    :cond_1d
    :goto_1d
    return-void
.end method

.method public static blacklist replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "font"    # Landroid/graphics/Typeface;

    .line 187
    invoke-static {p1}, Lmiui/util/TypefaceUtils;->getStyle(Landroid/graphics/Typeface;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v0, v2}, Lmiui/util/TypefaceUtils;->getReplacedFontSafety(Landroid/content/Context;Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "font"    # Landroid/graphics/Typeface;
    .param p2, "textSize"    # F

    .line 191
    invoke-static {p1}, Lmiui/util/TypefaceUtils;->getStyle(Landroid/graphics/Typeface;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {p0, p1, v1, v0, p2}, Lmiui/util/TypefaceUtils;->getReplacedFontSafety(Landroid/content/Context;Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist updateDefaultFont()V
    .registers 5

    .line 298
    sget-object v0, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmiui/util/font/IFontManager;->getBaseFont(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 299
    .local v0, "normalFont":Landroid/graphics/Typeface;
    if-nez v0, :cond_a

    .line 300
    return-void

    .line 302
    :cond_a
    invoke-static {v0}, Lmiui/util/TypefaceHelper;->updateDefaultFont(Landroid/graphics/Typeface;)V

    .line 303
    sget-object v1, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    const/4 v2, 0x1

    .line 304
    invoke-interface {v1, v2}, Lmiui/util/font/IFontManager;->getBaseFont(I)Landroid/graphics/Typeface;

    move-result-object v1

    sget-object v2, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    const/4 v3, 0x2

    .line 305
    invoke-interface {v2, v3}, Lmiui/util/font/IFontManager;->getBaseFont(I)Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v3, Lmiui/util/TypefaceUtils;->sManager:Lmiui/util/font/IFontManager;

    const/4 v4, 0x3

    .line 306
    invoke-interface {v3, v4}, Lmiui/util/font/IFontManager;->getBaseFont(I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 303
    invoke-static {v0, v1, v2, v3}, Lmiui/util/TypefaceHelper;->updateDefaultWithStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    .line 308
    return-void
.end method

.method public static blacklist useVarFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
    .registers 5
    .param p0, "font"    # Landroid/graphics/Typeface;
    .param p1, "size"    # F

    .line 176
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 177
    return-object v0

    .line 179
    :cond_4
    const/4 v1, -0x1

    invoke-static {p0}, Lmiui/util/TypefaceUtils;->getStyle(Landroid/graphics/Typeface;)I

    move-result v2

    invoke-static {v0, p0, v1, v2, p1}, Lmiui/util/TypefaceUtils;->getReplacedFontSafety(Landroid/content/Context;Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
