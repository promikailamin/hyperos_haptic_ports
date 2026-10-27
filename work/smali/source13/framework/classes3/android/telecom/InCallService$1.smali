.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telecom/InCallService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 274
    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 277
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_e

    .line 278
    return-void

    .line 281
    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_136

    goto/16 :goto_135

    .line 349
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 350
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/Phone;->internalOnHandoverComplete(Ljava/lang/String;)V

    .line 351
    goto/16 :goto_135

    .line 343
    .end local v0    # "callId":Ljava/lang/String;
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 344
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 345
    .local v1, "error":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnHandoverFailed(Ljava/lang/String;I)V

    .line 346
    goto/16 :goto_135

    .line 337
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "error":I
    :pswitch_36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 338
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 339
    .local v1, "reason":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnRttInitiationFailure(Ljava/lang/String;I)V

    .line 340
    goto/16 :goto_135

    .line 331
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "reason":I
    :pswitch_47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 332
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 333
    .local v1, "requestId":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnRttUpgradeRequest(Ljava/lang/String;I)V

    .line 334
    goto/16 :goto_135

    .line 319
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "requestId":I
    :pswitch_58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 321
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5c
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 322
    .local v1, "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 323
    .local v2, "event":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 324
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v4}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/telecom/Phone;->internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_71
    .catchall {:try_start_5c .. :try_end_71} :catchall_77

    .line 326
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 327
    nop

    .line 328
    goto/16 :goto_135

    .line 326
    :catchall_77
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 327
    throw v1

    .line 316
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7c
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Phone;->internalSilenceRinger()V

    .line 317
    goto/16 :goto_135

    .line 313
    :pswitch_87
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_92

    goto :goto_93

    :cond_92
    move v1, v2

    :goto_93
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    .line 314
    goto/16 :goto_135

    .line 310
    :pswitch_98
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v1, v2

    :goto_a4
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    .line 311
    goto/16 :goto_135

    .line 307
    :pswitch_a9
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/CallAudioState;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 308
    goto/16 :goto_135

    .line 296
    :pswitch_b8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 298
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_bc
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 299
    .restart local v1    # "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 300
    .local v2, "remaining":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v3}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_bc .. :try_end_cd} :catchall_d2

    .line 302
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "remaining":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 303
    nop

    .line 304
    goto :goto_135

    .line 302
    :catchall_d2
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 303
    throw v1

    .line 293
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_d7
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    .line 294
    goto :goto_135

    .line 290
    :pswitch_e5
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    .line 291
    goto :goto_135

    .line 283
    :pswitch_f3
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "callingPackage":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v2, Landroid/telecom/Phone;

    new-instance v3, Landroid/telecom/InCallAdapter;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v3, v4}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 285
    invoke-virtual {v4}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {v2, v3, v0, v4}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V

    invoke-static {v1, v2}, Landroid/telecom/InCallService;->-$$Nest$fputmPhone(Landroid/telecom/InCallService;Landroid/telecom/Phone;)V

    .line 286
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhoneListener(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    .line 287
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    .line 288
    nop

    .line 356
    .end local v0    # "callingPackage":Ljava/lang/String;
    :goto_135
    return-void

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_f3
        :pswitch_e5
        :pswitch_d7
        :pswitch_b8
        :pswitch_a9
        :pswitch_98
        :pswitch_87
        :pswitch_7c
        :pswitch_58
        :pswitch_47
        :pswitch_36
        :pswitch_25
        :pswitch_16
    .end packed-switch
.end method
