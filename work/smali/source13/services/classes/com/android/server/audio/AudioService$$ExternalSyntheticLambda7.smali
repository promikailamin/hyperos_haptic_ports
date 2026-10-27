.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->lambda$onSystemReady$4$com-android-server-audio-AudioService(IZ)V

    return-void
.end method
