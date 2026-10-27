.class public Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;
.super Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.source "VoiceInteractionManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .registers 2

    .line 2852
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 2879
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmServiceStub(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object p0

    return-object p0
.end method

.method public onSetInvocationEffectEnabled(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSetUiHints(Landroid/os/Bundle;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onVoiceSessionHidden()V
    .registers 1

    .line 0
    return-void
.end method

.method public onVoiceSessionShown()V
    .registers 1

    .line 0
    return-void
.end method

.method public onVoiceSessionWindowVisibilityChanged(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 2867
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->stopHotwordTriggerToUiLatencySession(Landroid/content/Context;)V

    :cond_9
    return-void
.end method
