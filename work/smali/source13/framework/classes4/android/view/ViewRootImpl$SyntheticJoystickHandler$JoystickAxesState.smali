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
    .registers 4
    .param p1, "this$1"    # Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    .line 7925
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7934
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_16

    iput-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    .line 7935
    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    return-void

    nop

    :array_16
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private greylist-max-o isXAxis(I)Z
    .registers 3
    .param p1, "axis"    # I

    .line 8015
    if-eqz p1, :cond_9

    const/16 v0, 0xf

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private greylist-max-o isYAxis(I)Z
    .registers 4
    .param p1, "axis"    # I

    .line 8018
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
    .param p1, "axis"    # I
    .param p2, "state"    # I

    .line 8022
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    if-ne p2, v1, :cond_c

    .line 8023
    const/16 v0, 0x15

    return v0

    .line 8025
    :cond_c
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    if-ne p2, v2, :cond_18

    .line 8026
    const/16 v0, 0x16

    return v0

    .line 8028
    :cond_18
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v0

    if-eqz v0, :cond_23

    if-ne p2, v1, :cond_23

    .line 8029
    const/16 v0, 0x13

    return v0

    .line 8031
    :cond_23
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-ne p2, v2, :cond_2e

    .line 8032
    const/16 v0, 0x14

    return v0

    .line 8034
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

    move-result-object v1

    const-string v2, " or direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8035
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o joystickAxisValueToState(F)I
    .registers 3
    .param p1, "value"    # F

    .line 8039
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 8040
    const/4 v0, 0x1

    return v0

    .line 8041
    :cond_8
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    .line 8042
    const/4 v0, -0x1

    return v0

    .line 8044
    :cond_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method greylist-max-o resetState()V
    .registers 4

    .line 7938
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 7939
    const/4 v2, 0x1

    aput v1, v0, v2

    .line 7940
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v1, v0, v1

    .line 7941
    aput v1, v0, v2

    .line 7942
    return-void
.end method

.method greylist-max-o updateStateForAxis(Landroid/view/MotionEvent;JIF)V
    .registers 34
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "time"    # J
    .param p4, "axis"    # I
    .param p5, "value"    # F

    .line 7949
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 7950
    const/4 v2, 0x0

    .line 7951
    .local v2, "axisStateIndex":I
    const/4 v3, 0x1

    .local v3, "repeatMessage":I
    goto :goto_15

    .line 7952
    .end local v2    # "axisStateIndex":I
    .end local v3    # "repeatMessage":I
    :cond_d
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 7953
    const/4 v2, 0x1

    .line 7954
    .restart local v2    # "axisStateIndex":I
    const/4 v3, 0x2

    .line 7959
    .restart local v3    # "repeatMessage":I
    :goto_15
    move/from16 v4, p5

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisValueToState(F)I

    move-result v5

    .line 7962
    .local v5, "newState":I
    const/4 v6, 0x1

    if-eqz v1, :cond_26

    if-ne v1, v6, :cond_21

    goto :goto_26

    .line 7965
    :cond_21
    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    aget v7, v7, v2

    .local v7, "currentState":I
    goto :goto_2a

    .line 7963
    .end local v7    # "currentState":I
    :cond_26
    :goto_26
    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aget v7, v7, v2

    .line 7968
    .restart local v7    # "currentState":I
    :goto_2a
    if-ne v7, v5, :cond_2d

    .line 7969
    return-void

    .line 7972
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v21

    .line 7973
    .local v21, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    .line 7974
    .local v15, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v22

    .line 7976
    .local v22, "source":I
    const/4 v14, -0x1

    if-eq v7, v6, :cond_3e

    if-ne v7, v14, :cond_81

    .line 7978
    :cond_3e
    invoke-direct {v0, v1, v7}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisAndStateToKeycode(II)I

    move-result v23

    .line 7979
    .local v23, "keyCode":I
    if-eqz v23, :cond_7c

    .line 7980
    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v13, v8, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x400

    move-object v8, v11

    move-wide/from16 v9, p2

    move-object v6, v11

    move-wide/from16 v11, p2

    move-object/from16 v24, v13

    move/from16 v13, v16

    move/from16 v14, v23

    move/from16 v25, v15

    .end local v15    # "deviceId":I
    .local v25, "deviceId":I
    move/from16 v15, v17

    move/from16 v16, v21

    move/from16 v17, v25

    move/from16 v20, v22

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v8, v24

    invoke-virtual {v8, v6}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 7983
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$fgetmDeviceKeyEvents(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)Landroid/util/SparseArray;

    move-result-object v6

    const/4 v8, 0x0

    move/from16 v15, v25

    .end local v25    # "deviceId":I
    .restart local v15    # "deviceId":I
    invoke-virtual {v6, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7985
    :cond_7c
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v6, v3}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 7988
    .end local v23    # "keyCode":I
    :cond_81
    const/4 v6, 0x1

    if-eq v5, v6, :cond_8b

    const/4 v6, -0x1

    if-ne v5, v6, :cond_88

    goto :goto_8b

    :cond_88
    move v8, v15

    goto/16 :goto_fd

    .line 7990
    :cond_8b
    :goto_8b
    invoke-direct {v0, v1, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisAndStateToKeycode(II)I

    move-result v6

    .line 7991
    .local v6, "keyCode":I
    if-eqz v6, :cond_fc

    .line 7992
    new-instance v23, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x400

    move-object/from16 v8, v23

    move-wide/from16 v9, p2

    move-wide/from16 v11, p2

    move v14, v6

    move/from16 v25, v15

    .end local v15    # "deviceId":I
    .restart local v25    # "deviceId":I
    move/from16 v15, v16

    move/from16 v16, v21

    move/from16 v17, v25

    move/from16 v20, v22

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v15, v23

    .line 7994
    .local v15, "keyEvent":Landroid/view/KeyEvent;
    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v8, v8, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v8, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 7995
    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v8, v3, v15}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 7996
    .local v14, "m":Landroid/os/Message;
    const/4 v8, 0x1

    invoke-virtual {v14, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7997
    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v14, v9, v10}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8000
    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v8}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$fgetmDeviceKeyEvents(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)Landroid/util/SparseArray;

    move-result-object v13

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x420

    move-object v8, v11

    move-wide/from16 v9, p2

    move-object/from16 v26, v11

    move-wide/from16 v11, p2

    move-object/from16 v27, v13

    move/from16 v13, v16

    move-object/from16 v23, v14

    .end local v14    # "m":Landroid/os/Message;
    .local v23, "m":Landroid/os/Message;
    move v14, v6

    move-object/from16 v24, v15

    .end local v15    # "keyEvent":Landroid/view/KeyEvent;
    .local v24, "keyEvent":Landroid/view/KeyEvent;
    move/from16 v15, v17

    move/from16 v16, v21

    move/from16 v17, v25

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move/from16 v8, v25

    move-object/from16 v10, v26

    move-object/from16 v9, v27

    .end local v25    # "deviceId":I
    .local v8, "deviceId":I
    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_fd

    .line 7991
    .end local v8    # "deviceId":I
    .end local v23    # "m":Landroid/os/Message;
    .end local v24    # "keyEvent":Landroid/view/KeyEvent;
    .local v15, "deviceId":I
    :cond_fc
    move v8, v15

    .line 8007
    .end local v6    # "keyCode":I
    .end local v15    # "deviceId":I
    .restart local v8    # "deviceId":I
    :goto_fd
    if-eqz v1, :cond_108

    const/4 v6, 0x1

    if-ne v1, v6, :cond_103

    goto :goto_108

    .line 8010
    :cond_103
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    aput v5, v6, v2

    goto :goto_10c

    .line 8008
    :cond_108
    :goto_108
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v5, v6, v2

    .line 8012
    :goto_10c
    return-void

    .line 7956
    .end local v2    # "axisStateIndex":I
    .end local v3    # "repeatMessage":I
    .end local v5    # "newState":I
    .end local v7    # "currentState":I
    .end local v8    # "deviceId":I
    .end local v21    # "metaState":I
    .end local v22    # "source":I
    :cond_10d
    move/from16 v4, p5

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v2, v2, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected axis "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in updateStateForAxis!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7957
    return-void
.end method
