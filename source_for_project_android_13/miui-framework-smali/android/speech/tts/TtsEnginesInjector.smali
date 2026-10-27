.class public Landroid/speech/tts/TtsEnginesInjector;
.super Ljava/lang/Object;
.source "TtsEnginesInjector.java"

# interfaces
.implements Landroid/speech/tts/TtsEnginesInjectorStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist findFirstEngineSupportLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p1, "ttsEngines"    # Landroid/speech/tts/TtsEngines;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-virtual {p1}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 47
    .local v2, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-object v3, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 48
    .local v3, "engineDefaultLocale":Ljava/util/Locale;
    invoke-virtual {v3, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 49
    iget-object v1, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    return-object v1

    .line 51
    .end local v2    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v3    # "engineDefaultLocale":Ljava/util/Locale;
    :cond_23
    goto :goto_8

    .line 53
    :cond_24
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getRecommendEngineForLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .param p1, "ttsEngines"    # Landroid/speech/tts/TtsEngines;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 23
    const-string v0, "com.baidu.duersdk.opensdk"

    .line 24
    .local v0, "openSdkSpeechEngine":Ljava/lang/String;
    const-string v1, "com.xiaomi.mibrain.speech"

    .line 25
    .local v1, "mibrainEngine":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 26
    const-string v2, "com.xiaomi.mibrain.speech"

    invoke-virtual {p1, v2}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 27
    return-object v2

    .line 29
    :cond_1d
    const-string v2, "com.baidu.duersdk.opensdk"

    invoke-virtual {p1, v2}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 30
    return-object v2

    .line 33
    :cond_26
    const/4 v2, 0x0

    return-object v2
.end method
