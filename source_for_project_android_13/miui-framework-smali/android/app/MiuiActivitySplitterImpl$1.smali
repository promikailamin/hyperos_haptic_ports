.class Landroid/app/MiuiActivitySplitterImpl$1;
.super Landroid/os/Handler;
.source "MiuiActivitySplitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/MiuiActivitySplitterImpl;->checkSplitHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/MiuiActivitySplitterImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/MiuiActivitySplitterImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/MiuiActivitySplitterImpl;

    .line 235
    iput-object p1, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 238
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "MiuiActivitySplitterImpl"

    packed-switch v0, :pswitch_data_b8

    :pswitch_8
    goto/16 :goto_b4

    .line 277
    :pswitch_a
    :try_start_a
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-static {v0}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$fgetmToken(Landroid/app/MiuiActivitySplitterImpl;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$mremoveFromEntryStack(Landroid/app/MiuiActivitySplitterImpl;Landroid/os/IBinder;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    .line 280
    goto/16 :goto_b4

    .line 278
    :catch_15
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "removeFromEntryStack FAIL!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b4

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1d
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    move v1, v3

    :cond_25
    invoke-static {v0, v1}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$mhandleRestartLastContentIfNeeded(Landroid/app/MiuiActivitySplitterImpl;Z)V

    .line 274
    goto/16 :goto_b4

    .line 260
    :pswitch_2a
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-virtual {v0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v0

    .line 261
    .local v0, "subIntent":Landroid/content/Intent;
    if-eqz v0, :cond_b4

    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-static {v1}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$fgetmIsAllSubFinished(Landroid/app/MiuiActivitySplitterImpl;)Z

    move-result v1

    if-nez v1, :cond_b4

    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-static {v1}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$misBaseActivityNeedExit(Landroid/app/MiuiActivitySplitterImpl;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 262
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-static {v1}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$mclearSplittableInfo(Landroid/app/MiuiActivitySplitterImpl;)V

    .line 264
    :try_start_47
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-static {v1}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$fgetmActivity(Landroid/app/MiuiActivitySplitterImpl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_50
    .catch Landroid/content/ActivityNotFoundException; {:try_start_47 .. :try_end_50} :catch_58
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_51

    goto :goto_5e

    .line 267
    :catch_51
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "launch activity fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_5e

    .line 265
    :catch_58
    move-exception v1

    .line 266
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "startActivity Fail, ActivityNotFound!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_5e
    goto :goto_b4

    .line 257
    .end local v0    # "subIntent":Landroid/content/Intent;
    :pswitch_5f
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-static {v0, v1}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$msetActionBarButton(Landroid/app/MiuiActivitySplitterImpl;Z)V

    .line 258
    goto :goto_b4

    .line 251
    :pswitch_65
    :try_start_65
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-static {v0}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$fgetmToken(Landroid/app/MiuiActivitySplitterImpl;)Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$maddToEntryStack(Landroid/app/MiuiActivitySplitterImpl;Landroid/os/IBinder;ILandroid/content/Intent;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6f} :catch_70

    .line 254
    goto :goto_b4

    .line 252
    :catch_70
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "addToEntryStack FAIL!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_b4

    .line 240
    :pswitch_77
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-static {v0}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$misTopSplitActivity(Landroid/app/MiuiActivitySplitterImpl;)Z

    move-result v0

    .line 241
    .local v0, "isTop":Z
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-static {v1}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$fgetDEBUG(Landroid/app/MiuiActivitySplitterImpl;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is top ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", activity is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-static {v3}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$fgetmActivity(Landroid/app/MiuiActivitySplitterImpl;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_ab
    if-nez v0, :cond_ae

    .line 245
    return-void

    .line 247
    :cond_ae
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl$1;->this$0:Landroid/app/MiuiActivitySplitterImpl;

    invoke-static {v1}, Landroid/app/MiuiActivitySplitterImpl;->-$$Nest$mjudgeClearEntryStack(Landroid/app/MiuiActivitySplitterImpl;)V

    .line 248
    nop

    .line 283
    .end local v0    # "isTop":Z
    :cond_b4
    :goto_b4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 284
    return-void

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_77
        :pswitch_65
        :pswitch_5f
        :pswitch_8
        :pswitch_2a
        :pswitch_1d
        :pswitch_a
    .end packed-switch
.end method
