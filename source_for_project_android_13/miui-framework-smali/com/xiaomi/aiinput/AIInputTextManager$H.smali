.class Lcom/xiaomi/aiinput/AIInputTextManager$H;
.super Landroid/os/Handler;
.source "AIInputTextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiinput/AIInputTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H"
.end annotation


# instance fields
.field private final blacklist manager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/aiinput/AIInputTextManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/os/Looper;Lcom/xiaomi/aiinput/AIInputTextManager;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "aiInputTextManager"    # Lcom/xiaomi/aiinput/AIInputTextManager;

    .line 548
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 549
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/aiinput/AIInputTextManager$H;->manager:Ljava/lang/ref/WeakReference;

    .line 550
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 554
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "AIInputTextManager"

    packed-switch v0, :pswitch_data_e2

    .line 614
    const-string v0, "handleMessage: Invalid message"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void

    .line 596
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 597
    .local v0, "argsGet":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_4e

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    instance-of v4, v4, Lcom/xiaomi/aiinput/AIInputResultListener;

    if-nez v4, :cond_1c

    goto :goto_4e

    .line 601
    :cond_1c
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/xiaomi/aiinput/AIInputResultListener;

    .line 602
    .local v4, "getInfoListener":Lcom/xiaomi/aiinput/AIInputResultListener;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 603
    iget-object v5, p0, Lcom/xiaomi/aiinput/AIInputTextManager$H;->manager:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_4d

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2e

    goto :goto_4d

    .line 607
    :cond_2e
    :try_start_2e
    iget-object v5, p0, Lcom/xiaomi/aiinput/AIInputTextManager$H;->manager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/aiinput/AIInputTextManager;

    invoke-static {v5, v4}, Lcom/xiaomi/aiinput/AIInputTextManager;->-$$Nest$mgetFocusedAITextInfo(Lcom/xiaomi/aiinput/AIInputTextManager;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_39} :catch_3a

    .line 611
    goto :goto_4c

    .line 608
    :catch_3a
    move-exception v5

    .line 609
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Unknown Error: getFocusedAITextInfo"

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    iget-object v3, p0, Lcom/xiaomi/aiinput/AIInputTextManager$H;->manager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/aiinput/AIInputTextManager;

    const/4 v6, 0x2

    invoke-static {v3, v4, v1, v6, v2}, Lcom/xiaomi/aiinput/AIInputTextManager;->-$$Nest$monAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputTextManager;Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 612
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4c
    return-void

    .line 604
    :cond_4d
    :goto_4d
    return-void

    .line 599
    .end local v4    # "getInfoListener":Lcom/xiaomi/aiinput/AIInputResultListener;
    :cond_4e
    :goto_4e
    return-void

    .line 576
    .end local v0    # "argsGet":Lcom/android/internal/os/SomeArgs;
    :pswitch_4f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 577
    .local v0, "argsInsert":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_98

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_98

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    instance-of v4, v4, Lcom/xiaomi/aiinput/AIInputResultListener;

    if-nez v4, :cond_62

    goto :goto_98

    .line 582
    :cond_62
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 583
    .local v4, "insertStr":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Lcom/xiaomi/aiinput/AIInputResultListener;

    .line 584
    .local v5, "insertListener":Lcom/xiaomi/aiinput/AIInputResultListener;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 585
    iget-object v6, p0, Lcom/xiaomi/aiinput/AIInputTextManager$H;->manager:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_97

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_78

    goto :goto_97

    .line 589
    :cond_78
    :try_start_78
    iget-object v6, p0, Lcom/xiaomi/aiinput/AIInputTextManager$H;->manager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/aiinput/AIInputTextManager;

    invoke-static {v6, v4, v5}, Lcom/xiaomi/aiinput/AIInputTextManager;->-$$Nest$minsertFocusedAIText(Lcom/xiaomi/aiinput/AIInputTextManager;Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_83} :catch_84

    .line 593
    goto :goto_96

    .line 590
    :catch_84
    move-exception v6

    .line 591
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "Unknown Error: insertFocusedAIText"

    invoke-static {v3, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    iget-object v3, p0, Lcom/xiaomi/aiinput/AIInputTextManager$H;->manager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/aiinput/AIInputTextManager;

    const/4 v7, 0x1

    invoke-static {v3, v5, v1, v7, v2}, Lcom/xiaomi/aiinput/AIInputTextManager;->-$$Nest$monAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputTextManager;Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 594
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_96
    return-void

    .line 586
    :cond_97
    :goto_97
    return-void

    .line 580
    .end local v4    # "insertStr":Ljava/lang/String;
    .end local v5    # "insertListener":Lcom/xiaomi/aiinput/AIInputResultListener;
    :cond_98
    :goto_98
    return-void

    .line 556
    .end local v0    # "argsInsert":Lcom/android/internal/os/SomeArgs;
    :pswitch_99
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 557
    .local v0, "argsReplace":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_e1

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_e1

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    instance-of v4, v4, Lcom/xiaomi/aiinput/AIInputResultListener;

    if-nez v4, :cond_ac

    goto :goto_e1

    .line 562
    :cond_ac
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 563
    .local v4, "replaceStr":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Lcom/xiaomi/aiinput/AIInputResultListener;

    .line 564
    .local v5, "replaceListener":Lcom/xiaomi/aiinput/AIInputResultListener;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 565
    iget-object v6, p0, Lcom/xiaomi/aiinput/AIInputTextManager$H;->manager:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_e0

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_c2

    goto :goto_e0

    .line 569
    :cond_c2
    :try_start_c2
    iget-object v6, p0, Lcom/xiaomi/aiinput/AIInputTextManager$H;->manager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/aiinput/AIInputTextManager;

    invoke-static {v6, v4, v5}, Lcom/xiaomi/aiinput/AIInputTextManager;->-$$Nest$msetFocusedAIText(Lcom/xiaomi/aiinput/AIInputTextManager;Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cd} :catch_ce

    .line 573
    goto :goto_df

    .line 570
    :catch_ce
    move-exception v6

    .line 571
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v7, "Unknown Error: setFocusedAIText"

    invoke-static {v3, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    iget-object v3, p0, Lcom/xiaomi/aiinput/AIInputTextManager$H;->manager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/aiinput/AIInputTextManager;

    invoke-static {v3, v5, v1, v2, v2}, Lcom/xiaomi/aiinput/AIInputTextManager;->-$$Nest$monAIInputResultCallback(Lcom/xiaomi/aiinput/AIInputTextManager;Lcom/xiaomi/aiinput/AIInputResultListener;Lcom/xiaomi/aiinput/AiTextInfo;IZ)V

    .line 574
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_df
    return-void

    .line 566
    :cond_e0
    :goto_e0
    return-void

    .line 560
    .end local v4    # "replaceStr":Ljava/lang/String;
    .end local v5    # "replaceListener":Lcom/xiaomi/aiinput/AIInputResultListener;
    :cond_e1
    :goto_e1
    return-void

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_99
        :pswitch_4f
        :pswitch_f
    .end packed-switch
.end method
