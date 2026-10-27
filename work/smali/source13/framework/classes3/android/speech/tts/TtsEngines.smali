.class public Landroid/speech/tts/TtsEngines;
.super Ljava/lang/Object;
.source "TtsEngines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TtsEngines$EngineInfoComparator;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOCALE_DELIMITER_NEW:Ljava/lang/String; = "_"

.field private static final greylist-max-o LOCALE_DELIMITER_OLD:Ljava/lang/String; = "-"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TtsEngines"

.field private static final greylist-max-o XML_TAG_NAME:Ljava/lang/String; = "tts-engine"

.field private static final greylist-max-o sNormalizeCountry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sNormalizeLanguage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v0, "normalizeLanguage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_22

    aget-object v5, v1, v4

    .line 87
    .local v5, "language":Ljava/lang/String;
    :try_start_10
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/util/MissingResourceException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 90
    goto :goto_1f

    .line 88
    :catch_1d
    move-exception v6

    .line 89
    .local v6, "e":Ljava/util/MissingResourceException;
    nop

    .line 85
    .end local v5    # "language":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/MissingResourceException;
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 92
    :cond_22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v1, "normalizeCountry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_32
    if-ge v3, v4, :cond_4a

    aget-object v5, v2, v3

    .line 97
    .local v5, "country":Ljava/lang/String;
    :try_start_36
    new-instance v6, Ljava/util/Locale;

    const-string v7, ""

    invoke-direct {v6, v7, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/util/MissingResourceException; {:try_start_36 .. :try_end_44} :catch_45

    .line 100
    goto :goto_47

    .line 98
    :catch_45
    move-exception v6

    .line 99
    .restart local v6    # "e":Ljava/util/MissingResourceException;
    nop

    .line 95
    .end local v5    # "country":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/MissingResourceException;
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 102
    :cond_4a
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    .line 103
    .end local v0    # "normalizeLanguage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "normalizeCountry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method private greylist-max-o getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .registers 7
    .param p1, "resolve"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 289
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 290
    .local v0, "service":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_31

    .line 291
    new-instance v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    invoke-direct {v1}, Landroid/speech/tts/TextToSpeech$EngineInfo;-><init>()V

    .line 294
    .local v1, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 295
    invoke-virtual {v0, p2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 296
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    goto :goto_1e

    :cond_1a
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1e
    iput-object v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    .line 297
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getIconResource()I

    move-result v3

    iput v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->icon:I

    .line 298
    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iput v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    .line 299
    invoke-direct {p0, v0}, Landroid/speech/tts/TtsEngines;->isSystemEngine(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    iput-boolean v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    .line 300
    return-object v1

    .line 303
    .end local v1    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_31
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o isSystemEngine(Landroid/content/pm/ServiceInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    .line 189
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 190
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public static greylist normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 5
    .param p0, "ttsLocale"    # Ljava/util/Locale;

    .line 454
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 456
    sget-object v1, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    .local v1, "normalizedLanguage":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 458
    move-object v0, v1

    .line 462
    .end local v1    # "normalizedLanguage":Ljava/lang/String;
    :cond_15
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "country":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 464
    sget-object v2, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 465
    .local v2, "normalizedCountry":Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 466
    move-object v1, v2

    .line 469
    .end local v2    # "normalizedCountry":Ljava/lang/String;
    :cond_2a
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static greylist-max-o parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "prefValue"    # Ljava/lang/String;
    .param p1, "engineName"    # Ljava/lang/String;

    .line 508
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 509
    return-object v1

    .line 512
    :cond_8
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "prefValues":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_31

    aget-object v5, v0, v4

    .line 515
    .local v5, "value":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 516
    .local v6, "delimiter":I
    if-lez v6, :cond_2e

    .line 517
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 518
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 514
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "delimiter":I
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 523
    :cond_31
    return-object v1
.end method

.method private greylist-max-o settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 13
    .param p1, "si"    # Landroid/content/pm/ServiceInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 241
    const-string v0, ":"

    const-string v1, "Error parsing metadata for "

    const-string v2, "TtsEngines"

    const/4 v3, 0x0

    .line 243
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v4, 0x0

    :try_start_8
    const-string v5, "android.speech.tts"

    invoke-virtual {p1, p2, v5}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    .line 244
    if-nez v3, :cond_2e

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No meta-data found for :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_27} :catch_e1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_27} :catch_bd
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_99
    .catchall {:try_start_8 .. :try_end_27} :catchall_97

    .line 246
    nop

    .line 282
    if-eqz v3, :cond_2d

    .line 283
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 246
    :cond_2d
    return-object v4

    .line 249
    :cond_2e
    :try_start_2e
    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 252
    .local v5, "res":Landroid/content/res/Resources;
    :cond_34
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_90

    .line 253
    const/4 v6, 0x2

    if-ne v7, v6, :cond_34

    .line 254
    const-string/jumbo v6, "tts-engine"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_77

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " uses unknown tag :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_70} :catch_e1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_70} :catch_bd
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_70} :catch_99
    .catchall {:try_start_2e .. :try_end_70} :catchall_97

    .line 257
    nop

    .line 282
    if-eqz v3, :cond_76

    .line 283
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 257
    :cond_76
    return-object v4

    .line 260
    :cond_77
    :try_start_77
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 261
    .local v6, "attrs":Landroid/util/AttributeSet;
    sget-object v8, Lcom/android/internal/R$styleable;->TextToSpeechEngine:[I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 263
    .local v8, "array":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, "settings":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_89
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_77 .. :try_end_89} :catch_e1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_77 .. :try_end_89} :catch_bd
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_89} :catch_99
    .catchall {:try_start_77 .. :try_end_89} :catchall_97

    .line 267
    nop

    .line 282
    if-eqz v3, :cond_8f

    .line 283
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 267
    :cond_8f
    return-object v9

    .line 271
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "array":Landroid/content/res/TypedArray;
    .end local v9    # "settings":Ljava/lang/String;
    :cond_90
    nop

    .line 282
    if-eqz v3, :cond_96

    .line 283
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 271
    :cond_96
    return-object v4

    .line 282
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v7    # "type":I
    :catchall_97
    move-exception v0

    goto :goto_ff

    .line 278
    :catch_99
    move-exception v5

    .line 279
    .local v5, "e":Ljava/io/IOException;
    :try_start_9a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_9a .. :try_end_b6} :catchall_97

    .line 280
    nop

    .line 282
    if-eqz v3, :cond_bc

    .line 283
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 280
    :cond_bc
    return-object v4

    .line 275
    .end local v5    # "e":Ljava/io/IOException;
    :catch_bd
    move-exception v5

    .line 276
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_be
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_be .. :try_end_da} :catchall_97

    .line 277
    nop

    .line 282
    if-eqz v3, :cond_e0

    .line 283
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 277
    :cond_e0
    return-object v4

    .line 272
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_e1
    move-exception v0

    .line 273
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_e2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load resources for : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_e2 .. :try_end_f8} :catchall_97

    .line 274
    nop

    .line 282
    if-eqz v3, :cond_fe

    .line 283
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 274
    :cond_fe
    return-object v4

    .line 282
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_ff
    if-eqz v3, :cond_104

    .line 283
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 285
    :cond_104
    throw v0
.end method

.method public static greylist-max-o toOldLocaleStringFormat(Ljava/util/Locale;)[Ljava/lang/String;
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .line 485
    const-string v0, ""

    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 490
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 491
    const/4 v2, 0x2

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1b
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_1b} :catch_1c

    .line 493
    return-object v1

    .line 494
    :catch_1c
    move-exception v2

    .line 497
    .local v2, "e":Ljava/util/MissingResourceException;
    const-string v3, "eng"

    const-string v4, "USA"

    filled-new-array {v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "list"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v0, "newPrefList":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_19

    .line 560
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 562
    :cond_19
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "prefValues":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 566
    .local v3, "first":Z
    const/4 v4, 0x0

    .line 567
    .local v4, "found":Z
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_24
    const/16 v8, 0x2c

    if-ge v7, v5, :cond_5b

    aget-object v9, v1, v7

    .line 568
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 569
    .local v10, "delimiter":I
    if-lez v10, :cond_58

    .line 570
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4e

    .line 571
    if-eqz v3, :cond_3e

    .line 572
    const/4 v3, 0x0

    goto :goto_41

    .line 574
    :cond_3e
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    :goto_41
    const/4 v4, 0x1

    .line 577
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 579
    :cond_4e
    if-eqz v3, :cond_52

    .line 580
    const/4 v3, 0x0

    goto :goto_55

    .line 582
    :cond_52
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    :goto_55
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "delimiter":I
    :cond_58
    :goto_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    .line 590
    :cond_5b
    if-nez v4, :cond_6b

    .line 593
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .end local v1    # "prefValues":[Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v4    # "found":Z
    :cond_6b
    :goto_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public greylist-max-o getDefaultEngine()Ljava/lang/String;
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_synth"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "engine":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v1, v0

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v1

    :goto_19
    return-object v1
.end method

.method public greylist-max-o getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 148
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 155
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    .line 156
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3, v0}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v3

    return-object v3

    .line 159
    :cond_2b
    const/4 v3, 0x0

    return-object v3
.end method

.method public greylist getEngines()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 170
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 172
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 173
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 175
    :cond_1b
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v3, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 178
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5, v0}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v6

    .line 179
    .local v6, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    if-eqz v6, :cond_3d

    .line 180
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    :cond_3d
    goto :goto_28

    .line 183
    :cond_3e
    sget-object v4, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 185
    return-object v3
.end method

.method public greylist-max-o getHighestRankedEngineName()Ljava/lang/String;
    .registers 5

    .line 127
    invoke-static {}, Landroid/speech/tts/TtsEnginesInjectorStub;->newInstance()Landroid/speech/tts/TtsEnginesInjectorStub;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/speech/tts/TtsEnginesInjectorStub;->getRecommendEngineForLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "engine":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 129
    return-object v0

    .line 133
    :cond_f
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2d

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v3, v3, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz v3, :cond_2d

    .line 136
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    return-object v2

    .line 139
    :cond_2d
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;
    .registers 4
    .param p1, "engineName"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 344
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 7
    .param p1, "engineName"    # Ljava/lang/String;
    .param p2, "prefValue"    # Ljava/lang/String;

    .line 350
    invoke-static {p2, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "localeString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 356
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 359
    :cond_f
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 360
    .local v1, "result":Ljava/util/Locale;
    if-nez v1, :cond_35

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning en_US instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TtsEngines"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 367
    :cond_35
    return-object v1
.end method

.method public greylist getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p1, "engine"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 210
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const v2, 0x10080

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 217
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_3a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    .line 218
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 219
    .local v3, "service":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_3a

    .line 220
    invoke-direct {p0, v3, v0}, Landroid/speech/tts/TtsEngines;->settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "settings":Ljava/lang/String;
    if-eqz v4, :cond_3a

    .line 222
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {v5, p1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    return-object v5

    .line 229
    .end local v3    # "service":Landroid/content/pm/ServiceInfo;
    .end local v4    # "settings":Ljava/lang/String;
    .end local v5    # "i":Landroid/content/Intent;
    :cond_3a
    const/4 v3, 0x0

    return-object v3
.end method

.method public greylist-max-o isEngineInstalled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "engine"    # Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 198
    return v0

    .line 201
    :cond_4
    invoke-virtual {p0, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public greylist-max-o isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z
    .registers 4
    .param p1, "engineName"    # Ljava/lang/String;

    .line 379
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 380
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {v0, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public greylist parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;
    .registers 13
    .param p1, "localeString"    # Ljava/lang/String;

    .line 393
    const-string v0, ""

    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .local v1, "country":Ljava/lang/String;
    const-string v2, ""

    .line 394
    .local v2, "variant":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "Failed to convert "

    const-string v6, "TtsEngines"

    if-nez v3, :cond_6b

    .line 395
    const-string v3, "[-_]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "split":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 398
    array-length v7, v3

    if-nez v7, :cond_3c

    .line 399
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to a valid Locale object. Only separators"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-object v4

    .line 403
    :cond_3c
    array-length v7, v3

    const/4 v8, 0x3

    if-le v7, v8, :cond_5b

    .line 404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to a valid Locale object. Too many separators"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-object v4

    .line 408
    :cond_5b
    array-length v7, v3

    const/4 v9, 0x2

    if-lt v7, v9, :cond_66

    .line 409
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 411
    :cond_66
    array-length v7, v3

    if-lt v7, v8, :cond_6b

    .line 412
    aget-object v2, v3, v9

    .line 417
    .end local v3    # "split":[Ljava/lang/String;
    :cond_6b
    sget-object v3, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 418
    .local v3, "normalizedLanguage":Ljava/lang/String;
    if-eqz v3, :cond_76

    .line 419
    move-object v0, v3

    .line 422
    :cond_76
    sget-object v7, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 423
    .local v7, "normalizedCountry":Ljava/lang/String;
    if-eqz v7, :cond_81

    .line 424
    move-object v1, v7

    .line 430
    :cond_81
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .local v8, "result":Ljava/util/Locale;
    :try_start_86
    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 433
    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_8c
    .catch Ljava/util/MissingResourceException; {:try_start_86 .. :try_end_8c} :catch_8d

    .line 434
    return-object v8

    .line 435
    :catch_8d
    move-exception v9

    .line 436
    .local v9, "e":Ljava/util/MissingResourceException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " to a valid Locale object."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-object v4
.end method

.method public declared-synchronized greylist updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 8
    .param p1, "engineName"    # Ljava/lang/String;
    .param p2, "newLocale"    # Ljava/util/Locale;

    monitor-enter p0

    .line 534
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "prefList":Ljava/lang/String;
    nop

    .line 542
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .end local p0    # "this":Landroid/speech/tts/TtsEngines;
    :cond_16
    const-string v1, ""

    .line 541
    :goto_18
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TtsEngines;->updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "newPrefList":Ljava/lang/String;
    iget-object v2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tts_default_locale"

    .line 547
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 546
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 548
    monitor-exit p0

    return-void

    .line 533
    .end local v0    # "prefList":Ljava/lang/String;
    .end local v1    # "newPrefList":Ljava/lang/String;
    .end local p1    # "engineName":Ljava/lang/String;
    .end local p2    # "newLocale":Ljava/util/Locale;
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
