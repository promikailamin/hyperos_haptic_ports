.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;
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

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/audio/AudioService;

    check-cast p1, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->lambda$new$0$com-android-server-audio-AudioService(Landroid/media/AudioDeviceAttributes;)V

    return-void
.end method
