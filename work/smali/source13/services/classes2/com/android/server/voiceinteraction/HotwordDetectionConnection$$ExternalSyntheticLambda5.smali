.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    check-cast p1, Landroid/service/voice/IHotwordDetectionService;

    invoke-virtual {v0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateServiceIdentity$13$com-android-server-voiceinteraction-HotwordDetectionConnection(Landroid/service/voice/IHotwordDetectionService;)V

    return-void
.end method
