.class public Landroid/app/ReceiverReporter;
.super Ljava/lang/Object;
.source "ReceiverReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ReceiverReporter$ReceiverHandler;,
        Landroid/app/ReceiverReporter$ReceiverObj;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist IS_STABLE_VERSION:Z

.field private static final blacklist MAX_QUANTITY:I = 0x1e

.field private static blacklist RE_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/mqsas/sdk/event/BroadcastEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "MIUI-ReceiverReporter"

.field public static blacklist mDispatchThreshold:J

.field private static blacklist mHandleThreshold:J

.field private static blacklist mIndex:I

.field private static final blacklist mObject:Ljava/lang/Object;

.field private static volatile blacklist mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

.field private static blacklist mReThread:Landroid/os/HandlerThread;

.field private static blacklist mReceiverMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ReceiverReporter$ReceiverObj;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPackageName:Ljava/lang/String;

.field private static blacklist sProcessName:Ljava/lang/String;

.field private static blacklist sSystemBootCompleted:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisSystemBootCompleted()Z
    .registers 1

    invoke-static {}, Landroid/app/ReceiverReporter;->isSystemBootCompleted()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 24
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    .line 25
    sput-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    .line 26
    sput-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    .line 27
    sput-object v0, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->mObject:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    sput v0, Landroid/app/ReceiverReporter;->mIndex:I

    .line 34
    const-string v0, "persist.receiver.dispatch"

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/app/ReceiverReporter;->mDispatchThreshold:J

    .line 35
    const-string v0, "persist.receiver.handle"

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/app/ReceiverReporter;->mHandleThreshold:J

    .line 38
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Landroid/app/ReceiverReporter;->IS_STABLE_VERSION:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist currentPackageName()Ljava/lang/String;
    .registers 2

    .line 109
    sget-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 110
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 112
    const-string v1, "android"

    sput-object v1, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    goto :goto_19

    .line 114
    :cond_17
    sput-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    .line 117
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_19
    :goto_19
    sget-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist currentProcessName()Ljava/lang/String;
    .registers 2

    .line 97
    sget-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 98
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 100
    const-string v1, "system_server"

    sput-object v1, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    goto :goto_19

    .line 102
    :cond_17
    sput-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    .line 105
    .end local v0    # "processName":Ljava/lang/String;
    :cond_19
    :goto_19
    sget-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static blacklist getReceiverHandler()Landroid/os/Handler;
    .registers 3

    .line 121
    sget-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    if-nez v0, :cond_29

    .line 122
    sget-object v0, Landroid/app/ReceiverReporter;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_7
    sget-object v1, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    if-nez v1, :cond_24

    .line 124
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "receiver-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    .line 125
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v1, Landroid/app/ReceiverReporter$ReceiverHandler;

    sget-object v2, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ReceiverReporter$ReceiverHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    .line 128
    :cond_24
    monitor-exit v0

    goto :goto_29

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v1

    .line 130
    :cond_29
    :goto_29
    sget-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    return-object v0
.end method

.method private static blacklist isSystemBootCompleted()Z
    .registers 2

    .line 134
    sget-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    if-nez v0, :cond_12

    .line 135
    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    .line 137
    :cond_12
    sget-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    return v0
.end method

.method static blacklist onReceiverFinished(Landroid/content/Intent;JJJLjava/lang/String;Z)V
    .registers 25
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "enTime"    # J
    .param p3, "disTime"    # J
    .param p5, "finTime"    # J
    .param p7, "broadcastReceiver"    # Ljava/lang/String;
    .param p8, "isQuWorked"    # Z

    .line 143
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    sget-boolean v7, Landroid/app/ReceiverReporter;->IS_STABLE_VERSION:Z

    if-eqz v7, :cond_d

    return-void

    .line 144
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "action":Ljava/lang/String;
    if-nez v7, :cond_15

    const-string v7, "null"

    .line 146
    :cond_15
    invoke-static {}, Landroid/app/ReceiverReporter;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "mPackageName":Ljava/lang/String;
    sub-long v9, v2, v0

    sget-wide v11, Landroid/app/ReceiverReporter;->mDispatchThreshold:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_2e

    sub-long v9, v4, v2

    sget-wide v11, Landroid/app/ReceiverReporter;->mHandleThreshold:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2a

    goto :goto_2e

    :cond_2a
    move/from16 v10, p8

    goto/16 :goto_d4

    .line 148
    :cond_2e
    :goto_2e
    new-instance v9, Lmiui/mqsas/sdk/event/BroadcastEvent;

    invoke-direct {v9}, Lmiui/mqsas/sdk/event/BroadcastEvent;-><init>()V

    .line 149
    .local v9, "receiver":Lmiui/mqsas/sdk/event/BroadcastEvent;
    const/16 v10, 0x41

    invoke-virtual {v9, v10}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setType(I)V

    .line 150
    invoke-virtual {v9, v7}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setAction(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v9, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    .line 152
    invoke-virtual {v9, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    .line 153
    invoke-virtual {v9, v4, v5}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    .line 154
    invoke-virtual {v9, v6}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setBrReceiver(Ljava/lang/String;)V

    .line 155
    move/from16 v10, p8

    invoke-virtual {v9, v10}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setQuWorked(Z)V

    .line 156
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual {v9, v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPid(I)V

    .line 157
    invoke-static {}, Landroid/app/ReceiverReporter;->currentProcessName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setProcessName(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v9, v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPackageName(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTimeStamp(J)V

    .line 160
    const-string v11, "android"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v9, v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setSystem(Z)V

    .line 161
    sget v11, Landroid/app/ReceiverReporter;->mIndex:I

    const/16 v12, 0x1e

    const/4 v13, 0x0

    if-ltz v11, :cond_76

    if-le v11, v12, :cond_77

    :cond_76
    move v11, v13

    :cond_77
    sput v11, Landroid/app/ReceiverReporter;->mIndex:I

    .line 162
    new-instance v11, Landroid/app/ReceiverReporter$ReceiverObj;

    invoke-direct {v11, v7, v8, v6}, Landroid/app/ReceiverReporter$ReceiverObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v11, "receiverObj":Landroid/app/ReceiverReporter$ReceiverObj;
    sget v14, Landroid/app/ReceiverReporter;->mIndex:I

    if-eqz v14, :cond_98

    if-gt v14, v12, :cond_98

    sget-object v14, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_98

    .line 164
    sget-object v12, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 165
    .local v12, "index":I
    sget-object v13, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v13, v12, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v12    # "index":I
    goto :goto_d4

    .line 167
    :cond_98
    sget v14, Landroid/app/ReceiverReporter;->mIndex:I

    if-lt v14, v12, :cond_c4

    .line 168
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 169
    .local v12, "message":Landroid/os/Message;
    iput v13, v12, Landroid/os/Message;->what:I

    .line 170
    new-instance v14, Landroid/content/pm/ParceledListSlice;

    sget-object v15, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iput-object v14, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    invoke-static {}, Landroid/app/ReceiverReporter;->getReceiverHandler()Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    sget-object v14, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 173
    sget-object v14, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 174
    sput v13, Landroid/app/ReceiverReporter;->mIndex:I

    .line 176
    .end local v12    # "message":Landroid/os/Message;
    :cond_c4
    sget v12, Landroid/app/ReceiverReporter;->mIndex:I

    add-int/lit8 v12, v12, 0x1

    sput v12, Landroid/app/ReceiverReporter;->mIndex:I

    .line 177
    sget-object v12, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v12, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v9    # "receiver":Lmiui/mqsas/sdk/event/BroadcastEvent;
    .end local v11    # "receiverObj":Landroid/app/ReceiverReporter$ReceiverObj;
    :goto_d4
    return-void
.end method
