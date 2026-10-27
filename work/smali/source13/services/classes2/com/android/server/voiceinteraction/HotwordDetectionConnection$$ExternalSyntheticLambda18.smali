.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/IContentCaptureManager;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/IContentCaptureManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda18;->f$0:Landroid/view/contentcapture/IContentCaptureManager;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda18;->f$0:Landroid/view/contentcapture/IContentCaptureManager;

    check-cast p1, Landroid/service/voice/IHotwordDetectionService;

    invoke-static {v0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateContentCaptureManager$12(Landroid/view/contentcapture/IContentCaptureManager;Landroid/service/voice/IHotwordDetectionService;)V

    return-void
.end method
