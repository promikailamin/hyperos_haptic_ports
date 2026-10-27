.class Lcom/android/server/wm/RecentsAnimationController$2;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "RecentsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 213
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    return-void
.end method

.method private sendBackEvent(I)V
    .registers 19
    .param p1, "action"    # I

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTargetActivityRecord(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_b

    .line 237
    return-void

    .line 239
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 240
    .local v15, "when":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x48

    const/16 v14, 0x101

    move-object v2, v1

    move-wide v3, v15

    move-wide v5, v15

    move/from16 v7, p1

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 245
    .local v1, "ev":Landroid/view/KeyEvent;
    iget-object v2, v0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTargetActivityRecord(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 246
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 247
    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .registers 1

    .line 227
    return-void
.end method

.method public onBackInvoked()V
    .registers 2

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimationController$2;->sendBackEvent(I)V

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimationController$2;->sendBackEvent(I)V

    .line 233
    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .registers 2
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 222
    return-void
.end method

.method public onBackStarted()V
    .registers 1

    .line 217
    return-void
.end method
