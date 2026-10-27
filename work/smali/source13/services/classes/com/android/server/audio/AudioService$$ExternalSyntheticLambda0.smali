.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->lambda$initExternalEventReceivers$1$com-android-server-audio-AudioService(Ljava/lang/String;)V

    return-void
.end method
