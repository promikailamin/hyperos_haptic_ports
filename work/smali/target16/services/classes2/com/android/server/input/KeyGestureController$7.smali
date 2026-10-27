.class public Lcom/android/server/input/KeyGestureController$7;
.super Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;
.source "KeyGestureController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;II)V
    .registers 4

    .line 418
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$7;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0, p2, p3}, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .line 440
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController$7;->getGestureType()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 444
    :cond_7
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$7;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v1, 0x18

    const/16 v2, 0x1a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void
.end method

.method public execute()V
    .registers 5

    .line 430
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController$7;->getGestureType()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 434
    :cond_7
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$7;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v1, 0x18

    const/16 v2, 0x1a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void
.end method

.method public final getGestureType()I
    .registers 2

    .line 452
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$7;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmPowerVolUpBehavior(Lcom/android/server/input/KeyGestureController;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/16 p0, 0x39

    return p0

    :cond_11
    const/16 p0, 0x38

    return p0
.end method

.method public preCondition()Z
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$7;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {v0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmPowerVolUpBehavior(Lcom/android/server/input/KeyGestureController;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    return v1

    .line 423
    :cond_a
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$7;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmRingerToggleChord(Lcom/android/server/input/KeyGestureController;)I

    move-result p0

    if-eqz p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method
