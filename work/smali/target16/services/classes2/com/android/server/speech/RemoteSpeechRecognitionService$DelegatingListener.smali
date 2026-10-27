.class public Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
.super Landroid/speech/IRecognitionListener$Stub;
.source "RemoteSpeechRecognitionService.java"


# instance fields
.field public final mOnSessionFailure:Ljava/lang/Runnable;

.field public final mOnSessionSuccess:Ljava/lang/Runnable;

.field public final mRemoteListener:Landroid/speech/IRecognitionListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRemoteListener(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;)Landroid/speech/IRecognitionListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/speech/IRecognitionListener;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 4

    .line 370
    invoke-direct {p0}, Landroid/speech/IRecognitionListener$Stub;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    .line 372
    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionSuccess:Ljava/lang/Runnable;

    .line 373
    iput-object p3, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionFailure:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 1

    .line 383
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0}, Landroid/speech/IRecognitionListener;->onBeginningOfSpeech()V

    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2

    .line 393
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onBufferReceived([B)V

    return-void
.end method

.method public onEndOfSegmentedSession()V
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 435
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0}, Landroid/speech/IRecognitionListener;->onEndOfSegmentedSession()V

    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    .line 398
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0}, Landroid/speech/IRecognitionListener;->onEndOfSpeech()V

    return-void
.end method

.method public onError(I)V
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionFailure:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 407
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3

    .line 445
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1, p2}, Landroid/speech/IRecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onLanguageDetection(Landroid/os/Bundle;)V
    .registers 2

    .line 440
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onLanguageDetection(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 2

    .line 421
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 2

    .line 378
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 3

    .line 415
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 416
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onResults(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRmsChanged(F)V
    .registers 2

    .line 388
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onRmsChanged(F)V

    return-void
.end method

.method public onSegmentResults(Landroid/os/Bundle;)V
    .registers 2

    .line 426
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onSegmentResults(Landroid/os/Bundle;)V

    return-void
.end method
