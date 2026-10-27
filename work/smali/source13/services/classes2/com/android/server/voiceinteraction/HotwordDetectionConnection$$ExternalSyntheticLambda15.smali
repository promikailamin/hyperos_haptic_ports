.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field public final synthetic f$1:Landroid/os/PersistableBundle;

.field public final synthetic f$2:Landroid/os/SharedMemory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;->f$1:Landroid/os/PersistableBundle;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;->f$2:Landroid/os/SharedMemory;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;->f$1:Landroid/os/PersistableBundle;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda15;->f$2:Landroid/os/SharedMemory;

    check-cast p1, Landroid/service/voice/IHotwordDetectionService;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateStateAfterProcessStart$1$com-android-server-voiceinteraction-HotwordDetectionConnection(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
