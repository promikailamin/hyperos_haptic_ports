.class public final synthetic Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    check-cast p1, Landroid/speech/IRecognitionService;

    invoke-static {v0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->lambda$stopListening$2(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/speech/IRecognitionService;)V

    return-void
.end method
