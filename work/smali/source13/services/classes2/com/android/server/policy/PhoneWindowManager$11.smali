.class Lcom/android/server/policy/PhoneWindowManager$11;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "keyCode1"    # I
    .param p3, "keyCode2"    # I

    .line 2337
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .line 2372
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    packed-switch v0, :pswitch_data_16

    goto :goto_14

    .line 2377
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mcancelGlobalActionsAction(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_14

    .line 2374
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mcancelPendingRingerToggleChordAction(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 2375
    nop

    .line 2380
    :goto_14
    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method

.method execute()V
    .registers 6

    .line 2349
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_32

    goto :goto_30

    .line 2356
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v2, 0x2713

    const/4 v3, 0x0

    const-string v4, "Power + Volume Up - Global Actions"

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mperformHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;IZLjava/lang/String;)Z

    .line 2360
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    const-string v2, "key_combination_power_volume_up"

    invoke-interface {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerStub;->trackGlobalActions(Ljava/lang/String;)V

    .line 2363
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    .line 2364
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 2365
    goto :goto_30

    .line 2352
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$minterceptRingerToggleChord(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 2353
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 2354
    nop

    .line 2369
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_26
        :pswitch_9
    .end packed-switch
.end method

.method preCondition()Z
    .registers 3

    .line 2340
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_12

    .line 2344
    return v1

    .line 2342
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
