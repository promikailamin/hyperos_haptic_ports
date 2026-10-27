.class final Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;
.super Landroid/speech/tts/ITextToSpeechManager$Stub;
.source "TextToSpeechManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/texttospeech/TextToSpeechManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextToSpeechManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;-><init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;)V

    return-void
.end method

.method static synthetic lambda$createSession$0(Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .registers 2
    .param p0, "sessionCallback"    # Landroid/speech/tts/ITextToSpeechSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const-string v0, "Service is not available for user"

    invoke-interface {p0, v0}, Landroid/speech/tts/ITextToSpeechSessionCallback;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createSession(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .registers 6
    .param p1, "engine"    # Ljava/lang/String;
    .param p2, "sessionCallback"    # Landroid/speech/tts/ITextToSpeechSessionCallback;

    .line 65
    iget-object v0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    # getter for: Lcom/android/server/texttospeech/TextToSpeechManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/texttospeech/TextToSpeechManagerService;->access$000(Lcom/android/server/texttospeech/TextToSpeechManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 66
    :try_start_7
    iget-object v1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    .line 67
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 66
    # invokes: Lcom/android/server/texttospeech/TextToSpeechManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v1, v2}, Lcom/android/server/texttospeech/TextToSpeechManagerService;->access$100(Lcom/android/server/texttospeech/TextToSpeechManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;

    .line 68
    .local v1, "perUserService":Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;
    if-eqz v1, :cond_19

    .line 69
    invoke-virtual {v1, p1, p2}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->createSessionLocked(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V

    goto :goto_21

    .line 71
    :cond_19
    new-instance v2, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Landroid/speech/tts/ITextToSpeechSessionCallback;)V

    invoke-static {v2}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->runSessionCallbackMethod(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$ThrowingRunnable;)V

    .line 74
    .end local v1    # "perUserService":Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;
    :goto_21
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method
