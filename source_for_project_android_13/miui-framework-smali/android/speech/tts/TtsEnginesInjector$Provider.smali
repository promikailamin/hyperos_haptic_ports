.class public final Landroid/speech/tts/TtsEnginesInjector$Provider;
.super Ljava/lang/Object;
.source "TtsEnginesInjector$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TtsEnginesInjector$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Landroid/speech/tts/TtsEnginesInjector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideNewInstance()Landroid/speech/tts/TtsEnginesInjector;
    .registers 2

    .line 14
    new-instance v0, Landroid/speech/tts/TtsEnginesInjector;

    invoke-direct {v0}, Landroid/speech/tts/TtsEnginesInjector;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/speech/tts/TtsEnginesInjector$Provider;->provideNewInstance()Landroid/speech/tts/TtsEnginesInjector;

    move-result-object v0

    return-object v0
.end method

.method public blacklist provideSingleton()Landroid/speech/tts/TtsEnginesInjector;
    .registers 2

    .line 10
    sget-object v0, Landroid/speech/tts/TtsEnginesInjector$Provider$SINGLETON;->INSTANCE:Landroid/speech/tts/TtsEnginesInjector;

    return-object v0
.end method

.method public bridge synthetic blacklist provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/speech/tts/TtsEnginesInjector$Provider;->provideSingleton()Landroid/speech/tts/TtsEnginesInjector;

    move-result-object v0

    return-object v0
.end method
