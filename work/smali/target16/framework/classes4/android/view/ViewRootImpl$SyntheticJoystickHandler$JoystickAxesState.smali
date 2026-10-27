.class final Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JoystickAxesState"
.end annotation


# static fields
.field private static final greylist-max-o STATE_DOWN_OR_RIGHT:I = 0x1

.field private static final greylist-max-o STATE_NEUTRAL:I = 0x0

.field private static final greylist-max-o STATE_UP_OR_LEFT:I = -0x1


# instance fields
.field final greylist-max-o mAxisStatesHat:[I

.field final greylist-max-o mAxisStatesStick:[I

.field final synthetic blacklist this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 9004
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9013
    const/4 p1, 0x0

    filled-new-array {p1, p1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    .line 9014
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    return-void
.end method

.method private greylist-max-o isXAxis(I)Z
    .registers 3

    .line 9094
    if-eqz p1, :cond_9

    const/16 v0, 0xf

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method

.method private greylist-max-o isYAxis(I)Z
    .registers 4

    .line 9097
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/16 v1, 0x10

    if-ne p1, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0
.end method

.method private greylist-max-o joystickAxisAndStateToKeycode(II)I
    .registers 6

    .line 9101
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    if-ne p2, v1, :cond_c

    .line 9102
    const/16 p1, 0x15

    return p1

    .line 9104
    :cond_c
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    if-ne p2, v2, :cond_18

    .line 9105
    const/16 p1, 0x16

    return p1

    .line 9107
    :cond_18
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v0

    if-eqz v0, :cond_23

    if-ne p2, v1, :cond_23

    .line 9108
    const/16 p1, 0x13

    return p1

    .line 9110
    :cond_23
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-ne p2, v2, :cond_2e

    .line 9111
    const/16 p1, 0x14

    return p1

    .line 9113
    :cond_2e
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown axis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " or direction "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9114
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o joystickAxisValueToState(F)I
    .registers 3

    .line 9118
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 9119
    const/4 p1, 0x1

    return p1

    .line 9120
    :cond_8
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_10

    .line 9121
    const/4 p1, -0x1

    return p1

    .line 9123
    :cond_10
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method greylist-max-o resetState()V
    .registers 4

    .line 9017
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 9018
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 9019
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v1, v0, v1

    .line 9020
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v1, v0, v2

    .line 9021
    return-void
.end method

.method greylist-max-o updateStateForAxis(Landroid/view/MotionEvent;JIF)V
    .registers 26

    .line 9028
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    .line 9029
    nop

    .line 9030
    const/4 v2, 0x0

    move v4, v3

    goto :goto_19

    .line 9031
    :cond_f
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 9032
    nop

    .line 9033
    const/4 v2, 0x2

    move v4, v2

    move v2, v3

    .line 9038
    :goto_19
    move/from16 v5, p5

    invoke-direct {v0, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisValueToState(F)I

    move-result v5

    .line 9041
    if-eqz v1, :cond_29

    if-ne v1, v3, :cond_24

    goto :goto_29

    .line 9044
    :cond_24
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    aget v6, v6, v2

    goto :goto_2d

    .line 9042
    :cond_29
    :goto_29
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aget v6, v6, v2

    .line 9047
    :goto_2d
    if-ne v6, v5, :cond_30

    .line 9048
    return-void

    .line 9051
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v15

    .line 9052
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    .line 9053
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    .line 9055
    const/4 v7, -0x1

    if-eq v6, v3, :cond_45

    if-ne v6, v7, :cond_42

    goto :goto_45

    :cond_42
    move/from16 v7, v16

    goto :goto_77

    .line 9057
    :cond_45
    :goto_45
    invoke-direct {v0, v1, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisAndStateToKeycode(II)I

    move-result v13

    .line 9058
    if-eqz v13, :cond_70

    .line 9059
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v6, v6, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    move v8, v7

    new-instance v7, Landroid/view/KeyEvent;

    const/16 v17, 0x0

    const/16 v18, 0x400

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-wide/from16 v10, p2

    move-wide/from16 v8, p2

    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v8, v7

    move/from16 v7, v16

    invoke-virtual {v6, v8}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 9062
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$fgetmDeviceKeyEvents(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)Landroid/util/SparseArray;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_72

    .line 9058
    :cond_70
    move/from16 v7, v16

    .line 9064
    :goto_72
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v6, v4}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 9067
    :goto_77
    if-eq v5, v3, :cond_7c

    const/4 v8, -0x1

    if-ne v5, v8, :cond_c3

    .line 9069
    :cond_7c
    invoke-direct {v0, v1, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisAndStateToKeycode(II)I

    move-result v13

    .line 9070
    if-eqz v13, :cond_c3

    .line 9071
    move/from16 v16, v7

    new-instance v7, Landroid/view/KeyEvent;

    const/16 v17, 0x0

    const/16 v18, 0x400

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-wide/from16 v10, p2

    move-wide/from16 v8, p2

    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 9073
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v6, v6, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 9074
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v6, v4, v7}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 9075
    invoke-virtual {v4, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 9076
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9079
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v4}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$fgetmDeviceKeyEvents(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v7, Landroid/view/KeyEvent;

    const/16 v18, 0x420

    const/4 v12, 0x1

    move-wide/from16 v8, p2

    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v6, v7

    move/from16 v7, v16

    invoke-virtual {v4, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9086
    :cond_c3
    if-eqz v1, :cond_cd

    if-ne v1, v3, :cond_c8

    goto :goto_cd

    .line 9089
    :cond_c8
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    aput v5, v0, v2

    goto :goto_d1

    .line 9087
    :cond_cd
    :goto_cd
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v5, v0, v2

    .line 9091
    :goto_d1
    return-void

    .line 9035
    :cond_d2
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected axis "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in updateStateForAxis!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9036
    return-void
.end method
