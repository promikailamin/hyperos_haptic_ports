.class public final Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 2628
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 p1, 0x1a

    .line 2629
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getLongPressTimeoutMs()J
    .registers 3

    .line 2686
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mgetResolvedLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 2687
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    return-wide v0

    .line 2689
    :cond_e
    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxMultiPressCount()I
    .registers 1

    .line 2645
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mgetMaxMultiPressPowerCount(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p0

    return p0
.end method

.method public onKeyGesture(Lcom/android/server/policy/SingleKeyGestureEvent;)V
    .registers 9

    .line 2650
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getStartTime()J

    move-result-wide v0

    .line 2651
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getDisplayId()I

    move-result v2

    .line 2652
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getPressCount()I

    move-result v3

    .line 2653
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getAction()I

    move-result v4

    .line 2654
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_28

    if-eq v5, v6, :cond_24

    const/4 p1, 0x2

    if-eq v5, p1, :cond_1d

    goto :goto_2a

    :cond_1d
    if-eq v4, v6, :cond_20

    goto :goto_2a

    .line 2672
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->onVeryLongPress()V

    return-void

    .line 2666
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->onLongPress(Lcom/android/server/policy/SingleKeyGestureEvent;)V

    return-void

    :cond_28
    if-eq v4, v6, :cond_2b

    :goto_2a
    return-void

    .line 2659
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getPressCount()I

    move-result p1

    if-le p1, v6, :cond_35

    .line 2660
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->onMultiPress(JII)V

    return-void

    .line 2662
    :cond_35
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->onPress(JI)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .registers 6

    .line 2733
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmShouldEarlyShortPressOnPower(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 2734
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JII)V

    :cond_18
    return-void
.end method

.method public final onLongPress(Lcom/android/server/policy/SingleKeyGestureEvent;)V
    .registers 4

    .line 2694
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmSingleKeyGestureDetector(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/SingleKeyGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmSupportLongPressPowerWhenNonInteractive(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2696
    const-string p0, "WindowManager"

    const-string p1, "Not support long press power when device is not interactive."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2704
    :cond_1c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mgetResolvedLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2b

    .line 2705
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleSingleKeyGestureInKeyGestureController(Lcom/android/server/policy/PhoneWindowManager;ILcom/android/server/policy/SingleKeyGestureEvent;)V

    return-void

    .line 2717
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 2718
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent;->getStartTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpowerLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V

    :cond_3b
    return-void
.end method

.method public final onMultiPress(JII)V
    .registers 5

    .line 2728
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JII)V

    return-void
.end method

.method public final onPress(JI)V
    .registers 5

    .line 2678
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmShouldEarlyShortPressOnPower(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2681
    :cond_9
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JII)V

    return-void
.end method

.method public final onVeryLongPress()V
    .registers 2

    .line 2723
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->prepareForPossibleShutdown()V

    .line 2724
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpowerVeryLongPress(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method

.method public supportLongPress()Z
    .registers 1

    .line 2634
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhasLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p0

    return p0
.end method

.method public supportVeryLongPress()Z
    .registers 1

    .line 2639
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhasVeryLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p0

    return p0
.end method
