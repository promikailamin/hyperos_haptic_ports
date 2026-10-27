.class final Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;
.super Landroid/speech/IRecognitionServiceManager$Stub;
.source "SpeechRecognitionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/speech/SpeechRecognitionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SpeechRecognitionManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 81
    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-direct {p0}, Landroid/speech/IRecognitionServiceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "clientToken"    # Landroid/os/IBinder;
    .param p3, "onDevice"    # Z
    .param p4, "callback"    # Landroid/speech/IRecognitionServiceManagerCallback;

    .line 89
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 90
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    # getter for: Lcom/android/server/speech/SpeechRecognitionManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/speech/SpeechRecognitionManagerService;->access$000(Lcom/android/server/speech/SpeechRecognitionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_b
    iget-object v2, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    # invokes: Lcom/android/server/speech/SpeechRecognitionManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v2, v0}, Lcom/android/server/speech/SpeechRecognitionManagerService;->access$100(Lcom/android/server/speech/SpeechRecognitionManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    .line 92
    .local v2, "service":Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->createSessionLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V

    .line 93
    .end local v2    # "service":Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;
    monitor-exit v1

    .line 94
    return-void

    .line 93
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public setTemporaryComponent(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 98
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 99
    .local v0, "userId":I
    if-nez p1, :cond_26

    .line 100
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/speech/SpeechRecognitionManagerService;->resetTemporaryService(I)V

    .line 101
    invoke-static {}, Lcom/android/server/speech/SpeechRecognitionManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset temporary service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 104
    :cond_26
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    .line 106
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 104
    const v3, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/speech/SpeechRecognitionManagerService;->setTemporaryService(ILjava/lang/String;I)V

    .line 108
    invoke-static {}, Lcom/android/server/speech/SpeechRecognitionManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpeechRecognition temporarily set to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method
