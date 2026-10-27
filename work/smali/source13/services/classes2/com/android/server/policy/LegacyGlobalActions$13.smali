.class Lcom/android/server/policy/LegacyGlobalActions$13;
.super Landroid/os/Handler;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 794
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 797
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    goto :goto_32

    .line 809
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$mhandleShow(Lcom/android/server/policy/LegacyGlobalActions;)V

    goto :goto_32

    .line 805
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$mrefreshSilentMode(Lcom/android/server/policy/LegacyGlobalActions;)V

    .line 806
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmAdapter(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsAdapter;->notifyDataSetChanged()V

    .line 807
    goto :goto_32

    .line 799
    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmDialog(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 800
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmDialog(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->dismiss()V

    .line 801
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$13;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fputmDialog(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ActionsDialog;)V

    .line 812
    :cond_32
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
