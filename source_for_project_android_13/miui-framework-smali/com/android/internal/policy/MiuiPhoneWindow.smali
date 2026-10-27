.class public Lcom/android/internal/policy/MiuiPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "MiuiPhoneWindow.java"


# instance fields
.field private blacklist mMenuDownCount:I

.field private blacklist mSplitMode:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preservedWindow"    # Landroid/view/Window;
    .param p3, "activityConfigCallback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected blacklist initSplitMode()V
    .registers 4

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/policy/MiuiPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_20

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 52
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_20

    .line 53
    invoke-virtual {v1}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1d

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mSplitMode:Z

    goto :goto_20

    .line 56
    :cond_1d
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mSplitMode:Z

    .line 60
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_20
    :goto_20
    return-void
.end method

.method protected blacklist isSplitMode()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/android/internal/policy/MiuiPhoneWindow;->mSplitMode:Z

    return v0
.end method

.method protected blacklist onKeyDown(IILandroid/view/KeyEvent;)Z
    .registers 19
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 25
    move-object v0, p0

    const/16 v1, 0xbb

    move/from16 v2, p2

    if-ne v2, v1, :cond_34

    .line 26
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/16 v9, 0x52

    .line 27
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 29
    .end local p3    # "event":Landroid/view/KeyEvent;
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .end local p2    # "keyCode":I
    .local v2, "keyCode":I
    goto :goto_36

    .line 25
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "keyCode":I
    .restart local p2    # "keyCode":I
    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_34
    move-object/from16 v1, p3

    .line 31
    .end local p2    # "keyCode":I
    .end local p3    # "event":Landroid/view/KeyEvent;
    .restart local v1    # "event":Landroid/view/KeyEvent;
    .restart local v2    # "keyCode":I
    :goto_36
    packed-switch v2, :pswitch_data_54

    goto :goto_4d

    .line 33
    :pswitch_3a
    iget v3, v0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    if-nez v3, :cond_47

    .line 35
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0x52

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    move-object v1, v3

    .line 37
    :cond_47
    iget v3, v0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    .line 41
    :goto_4d
    move/from16 v3, p1

    invoke-super {p0, v3, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    :pswitch_data_54
    .packed-switch 0x52
        :pswitch_3a
    .end packed-switch
.end method

.method protected blacklist onKeyUp(IILandroid/view/KeyEvent;)Z
    .registers 19
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 64
    move-object v0, p0

    const/16 v1, 0xbb

    move/from16 v2, p2

    if-ne v2, v1, :cond_34

    .line 65
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/16 v9, 0x52

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 68
    .end local p3    # "event":Landroid/view/KeyEvent;
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .end local p2    # "keyCode":I
    .local v2, "keyCode":I
    goto :goto_36

    .line 64
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "keyCode":I
    .restart local p2    # "keyCode":I
    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_34
    move-object/from16 v1, p3

    .line 70
    .end local p2    # "keyCode":I
    .end local p3    # "event":Landroid/view/KeyEvent;
    .restart local v1    # "event":Landroid/view/KeyEvent;
    .restart local v2    # "keyCode":I
    :goto_36
    packed-switch v2, :pswitch_data_52

    goto :goto_4a

    .line 72
    :pswitch_3a
    iget v3, v0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    .line 74
    new-instance v3, Landroid/view/KeyEvent;

    const/16 v5, 0x52

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    move-object v1, v3

    .line 76
    :cond_47
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/internal/policy/MiuiPhoneWindow;->mMenuDownCount:I

    .line 80
    :goto_4a
    move/from16 v3, p1

    invoke-super {p0, v3, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    nop

    :pswitch_data_52
    .packed-switch 0x52
        :pswitch_3a
    .end packed-switch
.end method
