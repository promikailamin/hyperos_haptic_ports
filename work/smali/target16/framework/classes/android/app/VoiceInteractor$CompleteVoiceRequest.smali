.class public Landroid/app/VoiceInteractor$CompleteVoiceRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompleteVoiceRequest"
.end annotation


# instance fields
.field final greylist-max-o mExtras:Landroid/os/Bundle;

.field final greylist-max-o mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method public constructor whitelist <init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V
    .registers 3

    .line 632
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 633
    iput-object p1, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 634
    iput-object p2, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    .line 635
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .registers 4

    .line 644
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 645
    if-eqz p1, :cond_b

    new-instance v0, Landroid/app/VoiceInteractor$Prompt;

    invoke-direct {v0, p1}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 646
    iput-object p2, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    .line 647
    return-void
.end method


# virtual methods
.method greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 653
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 654
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mPrompt="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 655
    iget-object p2, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_23

    .line 656
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "mExtras="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 658
    :cond_23
    return-void
.end method

.method greylist-max-o getRequestTypeName()Ljava/lang/String;
    .registers 2

    .line 661
    const-string v0, "CompleteVoice"

    return-object v0
.end method

.method public whitelist onCompleteResult(Landroid/os/Bundle;)V
    .registers 2

    .line 650
    return-void
.end method

.method greylist-max-o submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    iget-object v1, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/internal/app/IVoiceInteractor;->startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object p1

    return-object p1
.end method
