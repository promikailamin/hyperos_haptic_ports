.class Landroid/app/VoiceInteractor$1;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/VoiceInteractor;


# direct methods
.method constructor blacklist <init>(Landroid/app/VoiceInteractor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist executeMessage(Landroid/os/Message;)V
    .registers 8

    .line 91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 94
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_c2

    goto/16 :goto_c1

    .line 156
    :pswitch_d
    iget-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {p1, v0, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object p1

    .line 159
    if-eqz p1, :cond_c1

    .line 160
    invoke-virtual {p1}, Landroid/app/VoiceInteractor$Request;->onCancel()V

    .line 161
    invoke-virtual {p1}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto/16 :goto_c1

    .line 142
    :pswitch_21
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_27

    move v1, v3

    goto :goto_28

    :cond_27
    move v1, v2

    .line 143
    :goto_28
    iget-object v4, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v4, v5, v1}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v4

    .line 147
    if-eqz v4, :cond_c1

    .line 148
    move-object v5, v4

    check-cast v5, Landroid/app/VoiceInteractor$CommandRequest;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3c

    move v2, v3

    :cond_3c
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v5, v2, p1}, Landroid/app/VoiceInteractor$CommandRequest;->onCommandResult(ZLandroid/os/Bundle;)V

    .line 150
    if-eqz v1, :cond_c1

    .line 151
    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto/16 :goto_c1

    .line 132
    :pswitch_4a
    iget-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {p1, v1, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object p1

    .line 136
    if-eqz p1, :cond_c1

    .line 137
    move-object v1, p1

    check-cast v1, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/app/VoiceInteractor$AbortVoiceRequest;->onAbortResult(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p1}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_c1

    .line 122
    :pswitch_64
    iget-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {p1, v1, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object p1

    .line 126
    if-eqz p1, :cond_c1

    .line 127
    move-object v1, p1

    check-cast v1, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->onCompleteResult(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p1}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_c1

    .line 107
    :pswitch_7e
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_83

    move v2, v3

    .line 108
    :cond_83
    iget-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {p1, v1, v2}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object p1

    .line 113
    if-eqz p1, :cond_c1

    .line 114
    move-object v1, p1

    check-cast v1, Landroid/app/VoiceInteractor$PickOptionRequest;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 116
    if-eqz v2, :cond_c1

    .line 117
    invoke-virtual {p1}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_c1

    .line 96
    :pswitch_a3
    iget-object v1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v1, v4, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_c1

    .line 101
    move-object v4, v1

    check-cast v4, Landroid/app/VoiceInteractor$ConfirmationRequest;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_b7

    move v2, v3

    :cond_b7
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v4, v2, p1}, Landroid/app/VoiceInteractor$ConfirmationRequest;->onConfirmationResult(ZLandroid/os/Bundle;)V

    .line 103
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 165
    :cond_c1
    :goto_c1
    return-void

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_7e
        :pswitch_64
        :pswitch_4a
        :pswitch_21
        :pswitch_d
    .end packed-switch
.end method
