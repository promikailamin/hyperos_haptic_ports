.class Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParoleCheck"
.end annotation


# static fields
.field private static final blacklist MSG_PAROLE_CHECK_RUNNING:I = 0x3ea

.field private static final blacklist MSG_START_PAROLE_CHECK:I = 0x3e9

.field private static final blacklist STATE_RUNNING:I = 0x4

.field private static final blacklist STATE_STARTED:I = 0x3

.field private static final blacklist STATE_STARTING:I = 0x1

.field private static final blacklist STATE_STOPPED:I = 0x0

.field private static final blacklist STATE_STOPPING:I = 0x2


# instance fields
.field private blacklist mInParole:Z

.field private blacklist mMsgWhat:I

.field private blacklist mNotifyHandler:Landroid/os/Handler;

.field private blacklist mParoleArray:[J

.field private blacklist mParoleCheckHandler:Landroid/os/Handler;

.field private blacklist mParoleIndex:I

.field private blacklist mParoleLock:Ljava/lang/Object;

.field private blacklist state:I

.field final synthetic blacklist this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParoleLock(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monParoleMessageHandlerLocked(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->onParoleMessageHandlerLocked(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V
    .registers 7
    .param p1, "this$0"    # Lcom/miui/whetstone/PowerKeeperPolicy;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "msgWhat"    # I

    .line 1028
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_32

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    .line 1020
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1022
    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1023
    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1024
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    .line 1029
    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    .line 1030
    iput p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    .line 1031
    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 1039
    .local v0, "paroleCheckCallback":Landroid/os/Handler$Callback;
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    .line 1040
    return-void

    :array_32
    .array-data 8
        0x6ddd000
        0x7530
    .end array-data
.end method

.method private blacklist enterParoleAndNotifyLocked()V
    .registers 5

    .line 1109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1110
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1111
    return-void
.end method

.method private blacklist enterParoleLocked()V
    .registers 2

    .line 1101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1102
    return-void
.end method

.method private blacklist exitParoleAndNotifyLocked()V
    .registers 4

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1115
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    invoke-virtual {v1, v2, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1116
    return-void
.end method

.method private blacklist exitParoleLocked()V
    .registers 2

    .line 1105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1106
    return-void
.end method

.method private blacklist onParoleMessageHandlerLocked(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1119
    const/4 v0, 0x1

    .line 1120
    .local v0, "ret":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3ea

    const/4 v3, 0x4

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_5a

    .line 1158
    const/4 v0, 0x0

    goto :goto_59

    .line 1134
    :pswitch_c
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-eq v1, v3, :cond_11

    .line 1135
    goto :goto_59

    .line 1137
    :cond_11
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-nez v1, :cond_1d

    .line 1138
    const-string v1, "PowerKeeperPolicy"

    const-string v2, "Parole check array is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    goto :goto_59

    .line 1142
    :cond_1d
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_27

    .line 1143
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->enterParoleAndNotifyLocked()V

    goto :goto_2a

    .line 1145
    :cond_27
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    .line 1147
    :goto_2a
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    array-length v3, v1

    .line 1148
    .local v3, "length":I
    iget v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v6, v5, 0x1

    if-lt v6, v3, :cond_37

    .line 1149
    sub-int/2addr v5, v4

    iput v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    goto :goto_3a

    .line 1151
    :cond_37
    add-int/2addr v5, v4

    iput v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1153
    :goto_3a
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    aget-wide v4, v1, v4

    .line 1154
    .local v4, "delayMillis":J
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1156
    .end local v3    # "length":I
    .end local v4    # "delayMillis":J
    goto :goto_59

    .line 1122
    :pswitch_44
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-eq v1, v4, :cond_49

    .line 1123
    goto :goto_59

    .line 1125
    :cond_49
    iput v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1126
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1127
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-eqz v3, :cond_59

    .line 1128
    aget-wide v3, v3, v1

    .line 1129
    .local v3, "delayMillis":J
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1162
    .end local v3    # "delayMillis":J
    :cond_59
    :goto_59
    return v0

    :pswitch_data_5a
    .packed-switch 0x3e9
        :pswitch_44
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public blacklist isInParoleState()Z
    .registers 3

    .line 1095
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1096
    :try_start_3
    iget-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    monitor-exit v0

    return v1

    .line 1097
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isWorking()Z
    .registers 3

    .line 1086
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1087
    :try_start_3
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-nez v1, :cond_a

    .line 1088
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1090
    :cond_a
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1091
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public blacklist setParoleCheckParam([J)V
    .registers 6
    .param p1, "array"    # [J

    .line 1065
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1066
    :try_start_3
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    move v2, v1

    .line 1068
    .local v2, "initState":I
    const/4 v3, 0x4

    if-ne v1, v3, :cond_12

    .line 1069
    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1070
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    .line 1073
    :cond_12
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1074
    if-eqz p1, :cond_28

    array-length v1, p1

    if-nez v1, :cond_1b

    goto :goto_28

    .line 1076
    :cond_1b
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2b

    .line 1077
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    goto :goto_2b

    .line 1075
    :cond_28
    :goto_28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    .line 1079
    :cond_2b
    :goto_2b
    if-ne v2, v3, :cond_30

    .line 1080
    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    .line 1082
    .end local v2    # "initState":I
    :cond_30
    monitor-exit v0

    .line 1083
    return-void

    .line 1082
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public blacklist startParoleCheck()V
    .registers 4

    .line 1043
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1044
    :try_start_3
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-nez v1, :cond_1f

    .line 1045
    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1046
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$fgetmLocalLog(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/LocalLog;

    move-result-object v1

    const-string v2, "startParoleCheck"

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1047
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    .line 1048
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1050
    :cond_1f
    monitor-exit v0

    .line 1051
    return-void

    .line 1050
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist stopParoleCheck()V
    .registers 4

    .line 1054
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1055
    :try_start_3
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-eqz v1, :cond_1e

    .line 1056
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1057
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$fgetmLocalLog(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/LocalLog;

    move-result-object v1

    const-string v2, "stopParoleCheck"

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1058
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    .line 1059
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1061
    :cond_1e
    monitor-exit v0

    .line 1062
    return-void

    .line 1061
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method
