.class public Landroid/app/VoiceInteractor$CommandRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandRequest"
.end annotation


# instance fields
.field final greylist-max-o mArgs:Landroid/os/Bundle;

.field final greylist-max-o mCommand:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 753
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 754
    iput-object p1, p0, Landroid/app/VoiceInteractor$CommandRequest;->mCommand:Ljava/lang/String;

    .line 755
    iput-object p2, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

    .line 756
    return-void
.end method


# virtual methods
.method greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 767
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 768
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mCommand="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/app/VoiceInteractor$CommandRequest;->mCommand:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    iget-object p2, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

    if-eqz p2, :cond_23

    .line 770
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "mArgs="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 772
    :cond_23
    return-void
.end method

.method greylist-max-o getRequestTypeName()Ljava/lang/String;
    .registers 2

    .line 775
    const-string v0, "Command"

    return-object v0
.end method

.method public whitelist onCommandResult(ZLandroid/os/Bundle;)V
    .registers 3

    .line 764
    return-void
.end method

.method greylist-max-o submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 780
    iget-object v0, p0, Landroid/app/VoiceInteractor$CommandRequest;->mCommand:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/internal/app/IVoiceInteractor;->startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object p1

    return-object p1
.end method
