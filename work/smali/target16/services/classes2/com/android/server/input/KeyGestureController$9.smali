.class public Lcom/android/server/input/KeyGestureController$9;
.super Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;
.source "KeyGestureController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;II)V
    .registers 4

    .line 506
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$9;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0, p2, p3}, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .line 516
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$9;->this$0:Lcom/android/server/input/KeyGestureController;

    const/4 v0, 0x4

    const/16 v1, 0x17

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x3b

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void
.end method

.method public execute()V
    .registers 5

    .line 509
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$9;->this$0:Lcom/android/server/input/KeyGestureController;

    const/4 v0, 0x4

    const/16 v1, 0x17

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3b

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void
.end method

.method public getKeyInterceptDelayMs()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
