.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;
.super Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;
.source "HotwordDetectionConnection.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/server/voiceinteraction/HotwordDetectionConnection-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    return-void
.end method


# virtual methods
.method public onAccessibilityDetectionChanged(Z)V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$mgetVisualQueryDetectorSessionLocked(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->updateAccessibilityEgressStateLocked(Z)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 228
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_11

    throw p0
.end method
