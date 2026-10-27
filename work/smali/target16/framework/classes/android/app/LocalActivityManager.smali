.class public Landroid/app/LocalActivityManager;
.super Ljava/lang/Object;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocalActivityManager$LocalActivityRecord;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final greylist-max-o CREATED:I = 0x2

.field static final greylist-max-o DESTROYED:I = 0x5

.field static final greylist-max-o INITIALIZING:I = 0x1

.field static final greylist-max-o RESTORED:I = 0x0

.field static final greylist-max-o RESUMED:I = 0x4

.field static final greylist-max-o STARTED:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "LocalActivityManager"

.field private static final greylist-max-o localLOGV:Z = false


# instance fields
.field private final greylist-max-q mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-q mActivityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mActivityThread:Landroid/app/ActivityThread;

.field private greylist-max-o mCurState:I

.field private greylist-max-o mFinishing:Z

.field private final greylist-max-q mParent:Landroid/app/Activity;

.field private greylist-max-q mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

.field private greylist-max-q mSingleMode:Z


# direct methods
.method public constructor whitelist <init>(Landroid/app/Activity;Z)V
    .registers 4

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 127
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 128
    iput-object p1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    .line 129
    iput-boolean p2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 130
    return-void
.end method

.method private greylist-max-q moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V
    .registers 19

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v11, p2

    iget v1, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    if-eqz v1, :cond_115

    iget v1, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    goto/16 :goto_115

    .line 141
    :cond_11
    iget v1, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v1, v15, :cond_9c

    .line 143
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    .line 144
    invoke-virtual {v1}, Landroid/app/Activity;->getLastNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v1

    .line 145
    nop

    .line 146
    if-eqz v1, :cond_29

    .line 147
    iget-object v2, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2a

    .line 146
    :cond_29
    move-object v1, v14

    .line 149
    :goto_2a
    nop

    .line 150
    if-eqz v1, :cond_36

    .line 151
    new-instance v2, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v2}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 152
    iput-object v1, v2, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    move-object v8, v2

    goto :goto_37

    .line 150
    :cond_36
    move-object v8, v14

    .line 157
    :goto_37
    iget-object v1, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_45

    .line 158
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v2, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 160
    :cond_45
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v2, v0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    iget-object v3, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v4, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    move-object/from16 v9, p1

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Landroid/app/ActivityThread;->startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 162
    iget-object v1, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_60

    .line 163
    return-void

    .line 165
    :cond_60
    iget-object v1, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 166
    iput-object v14, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 168
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, v6}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 171
    iget-object v2, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_87

    .line 173
    new-instance v2, Landroid/app/servertransaction/PendingTransactionActions;

    invoke-direct {v2}, Landroid/app/servertransaction/PendingTransactionActions;-><init>()V

    .line 174
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/servertransaction/PendingTransactionActions;->setOldState(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {v2, v15}, Landroid/app/servertransaction/PendingTransactionActions;->setRestoreInstanceState(Z)V

    .line 176
    invoke-virtual {v2, v15}, Landroid/app/servertransaction/PendingTransactionActions;->setCallOnPostCreate(Z)V

    goto :goto_88

    .line 178
    :cond_87
    move-object v2, v14

    .line 181
    :goto_88
    iget-object v3, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v3, v1, v2, v14}, Landroid/app/ActivityThread;->handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 183
    iput v12, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 185
    if-ne v11, v13, :cond_9b

    .line 187
    iget-object v0, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v2, "moveToState-INITIALIZING"

    invoke-virtual {v0, v1, v15, v2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z

    .line 189
    iput v13, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 198
    :cond_9b
    return-void

    .line 201
    :cond_9c
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, v6}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 202
    if-nez v1, :cond_bf

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get activity record for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalActivityManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 207
    :cond_bf
    iget v2, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v2, :pswitch_data_116

    .line 254
    return-void

    .line 240
    :pswitch_c7
    if-ne v11, v12, :cond_d0

    .line 242
    iget-boolean v1, v0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {v0, v6, v1}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 243
    iput v12, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 245
    :cond_d0
    if-ne v11, v4, :cond_e1

    .line 247
    iget-boolean v1, v0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {v0, v6, v1}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 249
    iget-object v0, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "moveToState-RESUMED"

    invoke-virtual {v0, v6, v3, v1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 250
    iput v4, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 252
    :cond_e1
    return-void

    .line 224
    :pswitch_e2
    const-string/jumbo v2, "moveToState-STARTED"

    if-ne v11, v13, :cond_f0

    .line 227
    iget-object v5, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v5, v1, v15, v2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z

    .line 229
    iput-object v14, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 230
    iput v13, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 232
    :cond_f0
    if-ne v11, v4, :cond_f9

    .line 234
    iget-object v0, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, v6, v3, v2}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 235
    iput v4, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 237
    :cond_f9
    return-void

    .line 209
    :pswitch_fa
    if-ne v11, v12, :cond_103

    .line 211
    iget-object v2, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, v1, v15}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 212
    iput v12, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 214
    :cond_103
    if-ne v11, v13, :cond_114

    .line 216
    iget-object v2, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, v1, v15}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 217
    iget-object v0, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v2, "moveToState-CREATED"

    invoke-virtual {v0, v1, v15, v2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z

    .line 219
    iput v13, v6, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 221
    :cond_114
    return-void

    .line 138
    :cond_115
    :goto_115
    return-void

    :pswitch_data_116
    .packed-switch 0x2
        :pswitch_fa
        :pswitch_e2
        :pswitch_c7
    .end packed-switch
.end method

.method private greylist-max-o performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;
    .registers 8

    .line 409
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 410
    iget v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    if-nez p2, :cond_c

    .line 411
    invoke-direct {p0, p1, p2}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 414
    :cond_c
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, p1}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 415
    if-eqz v1, :cond_1c

    .line 416
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const/4 v3, 0x0

    const-string v4, "LocalActivityManager::performDestroy"

    invoke-virtual {v2, v1, p2, v3, v4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V

    .line 419
    :cond_1c
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 420
    iput-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 421
    if-eqz p2, :cond_25

    .line 422
    iput-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 424
    :cond_25
    const/4 p2, 0x5

    iput p2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 425
    return-object v0
.end method

.method private greylist-max-o performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V
    .registers 7

    .line 257
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 258
    :goto_7
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v2, "performPause"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    move-result-object p2

    .line 260
    if-eqz v0, :cond_15

    .line 261
    iput-object p2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 263
    :cond_15
    return-void
.end method


# virtual methods
.method public whitelist destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    .registers 5

    .line 441
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 442
    nop

    .line 443
    if-eqz v0, :cond_1c

    .line 444
    invoke-direct {p0, v0, p2}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    move-result-object v1

    .line 445
    if-eqz p2, :cond_1d

    .line 446
    iget-object p2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object p1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 443
    :cond_1c
    const/4 v1, 0x0

    .line 450
    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public whitelist dispatchCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 507
    if-eqz p1, :cond_43

    .line 508
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 510
    :try_start_16
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 511
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 512
    if-eqz v3, :cond_27

    .line 513
    iput-object v2, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    goto :goto_39

    .line 515
    :cond_27
    new-instance v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 516
    iput-object v2, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 517
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_39} :catch_3a

    .line 523
    :goto_39
    goto :goto_42

    .line 520
    :catch_3a
    move-exception v1

    .line 522
    const-string v2, "LocalActivityManager"

    const-string v3, "Exception thrown when restoring LocalActivityManager state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    :goto_42
    goto :goto_a

    .line 527
    :cond_43
    const/4 p1, 0x2

    iput p1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 528
    return-void
.end method

.method public whitelist dispatchDestroy(Z)V
    .registers 8

    .line 678
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 679
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_25

    .line 680
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 682
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v4, v3}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v3

    .line 683
    if-nez v3, :cond_1b

    .line 685
    goto :goto_22

    .line 687
    :cond_1b
    iget-object v4, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string v5, "LocalActivityManager::dispatchDestroy"

    invoke-virtual {v4, v3, p1, v1, v5}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V

    .line 679
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 690
    :cond_25
    iget-object p1, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 691
    iget-object p1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 692
    return-void
.end method

.method public whitelist dispatchPause(Z)V
    .registers 7

    .line 601
    if-eqz p1, :cond_5

    .line 602
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    .line 604
    :cond_5
    const/4 p1, 0x3

    iput p1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 605
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v0, :cond_16

    .line 606
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_32

    .line 607
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v0, p1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    goto :goto_32

    .line 610
    :cond_16
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 611
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_32

    .line 612
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 613
    iget v3, v2, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2f

    .line 614
    invoke-direct {p0, v2, p1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 611
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 618
    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist dispatchResume()V
    .registers 5

    .line 575
    const/4 v0, 0x4

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 576
    iget-boolean v1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v1, :cond_11

    .line 577
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v1, :cond_28

    .line 578
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v1, v0}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    goto :goto_28

    .line 581
    :cond_11
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 582
    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_28

    .line 583
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v3, v0}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 586
    :cond_28
    :goto_28
    return-void
.end method

.method public greylist-max-o dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 644
    nop

    .line 646
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 647
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_30

    .line 648
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 649
    if-eqz v3, :cond_2d

    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_2d

    .line 650
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    .line 651
    if-eqz v4, :cond_2d

    .line 652
    if-nez v1, :cond_28

    .line 653
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 655
    :cond_28
    iget-object v3, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 659
    :cond_30
    return-object v1
.end method

.method public whitelist dispatchStop()V
    .registers 5

    .line 628
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 629
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 630
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 631
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 632
    invoke-direct {p0, v3, v0}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 630
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 634
    :cond_1a
    return-void
.end method

.method public whitelist getActivity(Ljava/lang/String;)Landroid/app/Activity;
    .registers 3

    .line 488
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 489
    if-eqz p1, :cond_d

    iget-object p1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method public whitelist getCurrentActivity()Landroid/app/Activity;
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getCurrentId()Ljava/lang/String;
    .registers 2

    .line 476
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist removeAllActivities()V
    .registers 2

    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 668
    return-void
.end method

.method public whitelist saveInstanceState()Landroid/os/Bundle;
    .registers 7

    .line 541
    nop

    .line 545
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 546
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_41

    .line 547
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 548
    if-nez v1, :cond_1a

    .line 549
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 551
    :cond_1a
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v4, :cond_23

    iget v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_33

    :cond_23
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_33

    .line 555
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 556
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 557
    iput-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 559
    :cond_33
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-eqz v4, :cond_3e

    .line 560
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v3, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 546
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 564
    :cond_41
    return-object v1
.end method

.method public whitelist startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    .registers 11

    .line 311
    iget v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e4

    .line 316
    nop

    .line 317
    nop

    .line 319
    nop

    .line 322
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 323
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1c

    .line 325
    new-instance v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {v0, p1, p2}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 326
    move v4, v2

    move v2, v1

    goto :goto_2c

    .line 327
    :cond_1c
    iget-object v4, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2b

    .line 328
    iget-object v4, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    .line 329
    if-eqz v4, :cond_2c

    .line 331
    iget-object v3, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_2c

    .line 327
    :cond_2b
    move v4, v2

    .line 334
    :cond_2c
    :goto_2c
    if-nez v3, :cond_34

    .line 335
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v3, p2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 340
    :cond_34
    iget-boolean v5, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v5, :cond_47

    .line 341
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 345
    if-eqz v5, :cond_47

    if-eq v5, v0, :cond_47

    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_47

    .line 346
    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 350
    :cond_47
    if-eqz v2, :cond_55

    .line 352
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object p1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d0

    .line 354
    :cond_55
    iget-object p1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_d0

    .line 357
    iget-object p1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eq v3, p1, :cond_75

    iget-object p1, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 358
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    iget-object p1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 359
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 360
    :cond_75
    iget p1, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez p1, :cond_a2

    .line 361
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v2, 0x20000000

    and-int/2addr p1, v2

    if-eqz p1, :cond_83

    goto :goto_a2

    .line 375
    :cond_83
    if-eqz v4, :cond_9e

    .line 376
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v2, 0x4000000

    and-int/2addr p1, v2

    if-nez p1, :cond_9e

    .line 379
    iput-object p2, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 380
    iget p1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v0, p1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 381
    iget-boolean p1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz p1, :cond_9b

    .line 382
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 384
    :cond_9b
    iget-object p1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object p1

    .line 391
    :cond_9e
    invoke-direct {p0, v0, v1}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    goto :goto_d0

    .line 363
    :cond_a2
    :goto_a2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    new-instance v1, Lcom/android/internal/content/ReferrerIntent;

    iget-object v2, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 367
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, v1, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 368
    iput-object p2, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 369
    iget p1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v0, p1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 370
    iget-boolean p1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz p1, :cond_cd

    .line 371
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 373
    :cond_cd
    iget-object p1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object p1

    .line 394
    :cond_d0
    :goto_d0
    iput-object p2, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 395
    iput v1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 396
    iput-object v3, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 398
    iget p1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v0, p1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 401
    iget-boolean p1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz p1, :cond_e1

    .line 402
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 404
    :cond_e1
    iget-object p1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object p1

    .line 312
    :cond_e4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activities can\'t be added until the containing group has been created."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
