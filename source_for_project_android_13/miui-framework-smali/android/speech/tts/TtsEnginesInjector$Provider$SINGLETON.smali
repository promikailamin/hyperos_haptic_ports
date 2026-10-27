.class public final Landroid/speech/tts/TtsEnginesInjector$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "TtsEnginesInjector$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TtsEnginesInjector$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/speech/tts/TtsEnginesInjector;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/speech/tts/TtsEnginesInjector;

    invoke-direct {v0}, Landroid/speech/tts/TtsEnginesInjector;-><init>()V

    sput-object v0, Landroid/speech/tts/TtsEnginesInjector$Provider$SINGLETON;->INSTANCE:Landroid/speech/tts/TtsEnginesInjector;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
