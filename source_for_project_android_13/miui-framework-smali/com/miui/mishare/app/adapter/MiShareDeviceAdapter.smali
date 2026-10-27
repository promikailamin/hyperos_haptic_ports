.class public Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "MiShareDeviceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;,
        Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$IdleHandler;,
        Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;,
        Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final blacklist IDLE_DELAY:I = 0xbb8

.field private static final blacklist INTERVAL_SORT_TIMES:J = 0x7d0L

.field private static final blacklist KEY_TALKBACK:Ljava/lang/String; = "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

.field private static final blacklist MSG_DEVICE_IDLE:I = 0x1

.field private static final blacklist TOP_MAX_TIME:J = 0x493e0L

.field protected static blacklist sLastSendDevice:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mComparator:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/mishare/app/model/MiShareDevice;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private blacklist mIsInitialAddDevice:Z

.field private blacklist mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

.field private blacklist mSortHandler:Landroid/os/Handler;

.field private final blacklist mSortRunnable:Ljava/lang/Runnable;

.field private blacklist mStopSort:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmComparator(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mComparator:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDevices(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStopSort(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mStopSort:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNeedNotify(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Ljava/util/List;Ljava/util/List;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->isNeedNotify(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSort(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->startSort()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstoreDevice(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->storeDevice(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;-><init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator-IA;)V

    iput-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mComparator:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mIsInitialAddDevice:Z

    .line 73
    new-instance v1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;

    invoke-direct {v1, p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$1;-><init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V

    iput-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortRunnable:Ljava/lang/Runnable;

    .line 134
    new-instance v1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$IdleHandler;

    invoke-direct {v1, p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$IdleHandler;-><init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V

    iput-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    .line 136
    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setHasStableIds(Z)V

    .line 139
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 140
    return-void
.end method

.method private blacklist delayIdle(Ljava/lang/String;I)V
    .registers 7
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 191
    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-ne p2, v0, :cond_17

    .line 193
    :cond_6
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 194
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 195
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 198
    .end local v0    # "msg":Landroid/os/Message;
    :cond_17
    return-void
.end method

.method private blacklist isEnableTalkBack(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "valueTalkBack":Ljava/lang/String;
    if-eqz v0, :cond_16

    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private blacklist isNeedNotify(Ljava/util/List;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/mishare/app/model/MiShareDevice;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/mishare/app/model/MiShareDevice;",
            ">;)Z"
        }
    .end annotation

    .line 111
    .local p1, "oldDevices":Ljava/util/List;, "Ljava/util/List<Lcom/miui/mishare/app/model/MiShareDevice;>;"
    .local p2, "newDevices":Ljava/util/List;, "Ljava/util/List<Lcom/miui/mishare/app/model/MiShareDevice;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 112
    .local v0, "oldSize":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 114
    .local v1, "newSize":I
    const/4 v2, 0x1

    if-eq v0, v1, :cond_c

    .line 115
    return v2

    .line 119
    :cond_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    const/4 v4, 0x0

    if-ge v3, v1, :cond_45

    .line 120
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/mishare/app/model/MiShareDevice;

    .line 121
    .local v5, "newDevice":Lcom/miui/mishare/app/model/MiShareDevice;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/mishare/app/model/MiShareDevice;

    .line 123
    .local v6, "oldDevice":Lcom/miui/mishare/app/model/MiShareDevice;
    if-eqz v5, :cond_44

    if-eqz v6, :cond_44

    iget-object v7, v5, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    iget-object v8, v6, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    .line 124
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 125
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v7, v7, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/mishare/app/model/MiShareDevice;

    iget-object v4, v4, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_44

    .line 119
    .end local v5    # "newDevice":Lcom/miui/mishare/app/model/MiShareDevice;
    .end local v6    # "oldDevice":Lcom/miui/mishare/app/model/MiShareDevice;
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 126
    .restart local v5    # "newDevice":Lcom/miui/mishare/app/model/MiShareDevice;
    .restart local v6    # "oldDevice":Lcom/miui/mishare/app/model/MiShareDevice;
    :cond_44
    :goto_44
    return v2

    .line 129
    .end local v3    # "i":I
    .end local v5    # "newDevice":Lcom/miui/mishare/app/model/MiShareDevice;
    .end local v6    # "oldDevice":Lcom/miui/mishare/app/model/MiShareDevice;
    :cond_45
    return v4
.end method

.method public static blacklist setLastSendDevice(Landroid/util/Pair;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p0, "sLastSendDevice":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    sput-object p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->sLastSendDevice:Landroid/util/Pair;

    .line 71
    return-void
.end method

.method private blacklist showCancelConfirm(Lcom/miui/mishare/app/model/MiShareDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/miui/mishare/app/model/MiShareDevice;

    .line 373
    if-eqz p1, :cond_15

    iget-object v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 374
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    if-eqz v0, :cond_15

    .line 375
    invoke-interface {v0, p1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;->onCancelTask(Lcom/miui/mishare/app/model/MiShareDevice;)V

    .line 378
    :cond_15
    return-void
.end method

.method private blacklist startSort()V
    .registers 5

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mStopSort:Z

    .line 155
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void
.end method

.method private blacklist storeDevice(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/mishare/app/model/MiShareDevice;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/mishare/app/model/MiShareDevice;",
            ">;"
        }
    .end annotation

    .line 101
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/miui/mishare/app/model/MiShareDevice;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "oldDevices":Ljava/util/List;, "Ljava/util/List<Lcom/miui/mishare/app/model/MiShareDevice;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/mishare/app/model/MiShareDevice;

    .line 103
    .local v2, "device":Lcom/miui/mishare/app/model/MiShareDevice;
    if-eqz v2, :cond_1a

    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v2    # "device":Lcom/miui/mishare/app/model/MiShareDevice;
    :cond_1a
    goto :goto_9

    .line 107
    :cond_1b
    return-object v0
.end method

.method private blacklist updateDevice(Lcom/miui/mishare/app/model/MiShareDevice;)Z
    .registers 6
    .param p1, "device"    # Lcom/miui/mishare/app/model/MiShareDevice;

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 206
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/app/model/MiShareDevice;

    .line 207
    .local v1, "d":Lcom/miui/mishare/app/model/MiShareDevice;
    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 208
    iget v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    iput v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    .line 209
    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    iput-object v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    .line 210
    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 214
    invoke-virtual {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    .line 216
    :cond_35
    iget-boolean v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->isUwbHit:Z

    iget-boolean v3, p1, Lcom/miui/mishare/app/model/MiShareDevice;->isUwbHit:Z

    invoke-static {v2, v3}, Lcom/miui/mishare/app/model/MiShareDevice;->checkUwbHitUpdate(ZZ)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 217
    invoke-virtual {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    .line 219
    :cond_42
    iget-boolean v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    iget-boolean v3, p1, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    invoke-static {v2, v3}, Lcom/miui/mishare/app/model/MiShareDevice;->checkGlobalDeviceUpdate(ZZ)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 220
    invoke-virtual {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    .line 222
    :cond_4f
    const/4 v2, 0x1

    return v2

    .line 205
    .end local v1    # "d":Lcom/miui/mishare/app/model/MiShareDevice;
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    .end local v0    # "i":I
    :cond_54
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addOrUpdateDevice(Lcom/miui/mishare/app/model/MiShareDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/miui/mishare/app/model/MiShareDevice;

    .line 229
    if-nez p1, :cond_3

    .line 230
    return-void

    .line 232
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->updateDevice(Lcom/miui/mishare/app/model/MiShareDevice;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 233
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    .line 236
    :cond_11
    iget-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mIsInitialAddDevice:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->isEnableTalkBack(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mIsInitialAddDevice:Z

    .line 238
    invoke-direct {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->startSort()V

    .line 240
    :cond_23
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    return-void
.end method

.method public blacklist getItem(I)Lcom/miui/mishare/app/model/MiShareDevice;
    .registers 3
    .param p1, "position"    # I

    .line 143
    if-ltz p1, :cond_11

    invoke-virtual {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 144
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/mishare/app/model/MiShareDevice;

    return-object v0

    .line 146
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getItemCount()I
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist getItemId(I)J
    .registers 5
    .param p1, "position"    # I

    .line 316
    invoke-virtual {p0, p1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->getItem(I)Lcom/miui/mishare/app/model/MiShareDevice;

    move-result-object v0

    .line 317
    .local v0, "device":Lcom/miui/mishare/app/model/MiShareDevice;
    if-eqz v0, :cond_16

    iget-object v1, v0, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 318
    iget-object v1, v0, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 320
    :cond_16
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public bridge synthetic blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 45
    check-cast p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->onBindViewHolder(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;I)V

    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;I)V
    .registers 11
    .param p1, "viewHolder"    # Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 272
    invoke-virtual {p0, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->getItem(I)Lcom/miui/mishare/app/model/MiShareDevice;

    move-result-object v0

    .line 273
    .local v0, "device":Lcom/miui/mishare/app/model/MiShareDevice;
    if-eqz v0, :cond_ab

    .line 274
    iget-object v1, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    iget-boolean v2, v0, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    invoke-virtual {v1, v2}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setIsGloabal(Z)V

    .line 275
    iget-object v1, v0, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v1}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    .line 276
    invoke-virtual {v1}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "nickname_has_more"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v3

    goto :goto_2c

    :cond_2b
    move v1, v2

    .line 277
    .local v1, "nickNameHasMore":Z
    :goto_2c
    iget-object v4, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    iget v5, v0, Lcom/miui/mishare/app/model/MiShareDevice;->deviceType:I

    invoke-virtual {v4, v5}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceType(I)V

    .line 278
    iget-object v4, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    iget-object v5, v0, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceName(Ljava/lang/String;Z)V

    .line 280
    invoke-virtual {v0}, Lcom/miui/mishare/app/model/MiShareDevice;->isPC()Z

    move-result v4

    .line 281
    .local v4, "isPc":Z
    invoke-virtual {v0}, Lcom/miui/mishare/app/model/MiShareDevice;->isPad()Z

    move-result v5

    .line 282
    .local v5, "isPad":Z
    if-eqz v4, :cond_5b

    .line 283
    iget-boolean v6, v0, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    if-eqz v6, :cond_54

    .line 284
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceStyle(I)V

    .line 285
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    invoke-virtual {v6, v7}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setGlobalDeviceName(I)V

    goto :goto_89

    .line 287
    :cond_54
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceStyle(I)V

    goto :goto_89

    .line 289
    :cond_5b
    if-eqz v5, :cond_74

    .line 290
    iget-boolean v6, v0, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    if-eqz v6, :cond_6d

    .line 291
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceStyle(I)V

    .line 292
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    invoke-virtual {v6, v7}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setGlobalDeviceName(I)V

    goto :goto_89

    .line 294
    :cond_6d
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceStyle(I)V

    goto :goto_89

    .line 297
    :cond_74
    iget-boolean v6, v0, Lcom/miui/mishare/app/model/MiShareDevice;->isGlobalDevice:Z

    if-eqz v6, :cond_84

    .line 298
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceStyle(I)V

    .line 299
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    invoke-virtual {v6, v7}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setGlobalDeviceName(I)V

    goto :goto_89

    .line 301
    :cond_84
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    invoke-virtual {v6, v3}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceStyle(I)V

    .line 304
    :goto_89
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    iget v7, v0, Lcom/miui/mishare/app/model/MiShareDevice;->progressPercent:F

    invoke-virtual {v6, v7}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setProgressPercent(F)V

    .line 305
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    invoke-virtual {v6, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceStatus(Lcom/miui/mishare/app/model/MiShareDevice;)V

    .line 306
    invoke-static {}, Lcom/miui/mishare/DeviceModel;->supportUwb()Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 307
    iget-object v6, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    if-nez p2, :cond_a8

    iget-boolean v7, v0, Lcom/miui/mishare/app/model/MiShareDevice;->isUwbHit:Z

    if-eqz v7, :cond_a8

    iget v7, v0, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    if-ne v7, v3, :cond_a8

    move v2, v3

    :cond_a8
    invoke-virtual {v6, v2}, Lcom/miui/mishare/app/view/MiShareDeviceView;->toggleNotice(Z)V

    .line 310
    .end local v1    # "nickNameHasMore":Z
    .end local v4    # "isPc":Z
    .end local v5    # "isPad":Z
    :cond_ab
    iget-object v1, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    invoke-virtual {v1}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getIconView()Landroid/view/View;

    move-result-object v1

    const v2, 0x110a009f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 311
    iget-object v1, p1, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    invoke-virtual {v1}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .line 331
    const v0, 0x110a009f

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 332
    .local v0, "position":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 333
    .local v1, "p":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 335
    const/4 v2, 0x0

    aget v3, v1, v2

    .line 336
    .local v3, "x":I
    const/4 v4, 0x1

    aget v4, v1, v4

    .line 338
    .local v4, "y":I
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->getItem(I)Lcom/miui/mishare/app/model/MiShareDevice;

    move-result-object v5

    .line 339
    .local v5, "device":Lcom/miui/mishare/app/model/MiShareDevice;
    if-eqz v5, :cond_4b

    .line 340
    iget v6, v5, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    packed-switch v6, :pswitch_data_54

    goto :goto_48

    .line 362
    :pswitch_25
    iget-object v6, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    if-eqz v6, :cond_48

    .line 363
    invoke-interface {v6, v5, v3, v4}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;->onDeviceTaskStart(Lcom/miui/mishare/app/model/MiShareDevice;II)V

    goto :goto_48

    .line 356
    :pswitch_2d
    iget-object v6, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    if-eqz v6, :cond_48

    .line 357
    invoke-interface {v6, v5, v3, v4}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;->onDeviceTaskRetry(Lcom/miui/mishare/app/model/MiShareDevice;II)V

    goto :goto_48

    .line 352
    :pswitch_35
    invoke-direct {p0, v5}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->showCancelConfirm(Lcom/miui/mishare/app/model/MiShareDevice;)V

    .line 353
    goto :goto_48

    .line 343
    :pswitch_39
    iget-object v6, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    if-eqz v6, :cond_48

    .line 344
    invoke-static {}, Lcom/miui/mishare/app/model/MiShareDevice;->generatePCTaskId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    .line 345
    iget-object v6, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    invoke-interface {v6, v5, v3, v4}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;->onDeviceTaskStart(Lcom/miui/mishare/app/model/MiShareDevice;II)V

    .line 367
    :cond_48
    :goto_48
    invoke-virtual {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    .line 369
    :cond_4b
    iget-object v6, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string v7, "mesh_normal"

    invoke-virtual {v6, v7, v2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 370
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_39
        :pswitch_35
        :pswitch_2d
        :pswitch_25
        :pswitch_35
    .end packed-switch
.end method

.method public bridge synthetic blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;
    .registers 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .line 267
    new-instance v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView;

    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/mishare/app/view/MiShareDeviceView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;)V

    return-object v0
.end method

.method public blacklist registerListener(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    .line 159
    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mListener:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;

    .line 160
    return-void
.end method

.method public blacklist removeDevice(Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 256
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/app/model/MiShareDevice;

    .line 257
    .local v1, "d":Lcom/miui/mishare/app/model/MiShareDevice;
    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 258
    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 259
    invoke-virtual {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    .line 260
    return-void

    .line 255
    .end local v1    # "d":Lcom/miui/mishare/app/model/MiShareDevice;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method public blacklist replaceTaskId(Lcom/miui/mishare/MiShareTask;)V
    .registers 6
    .param p1, "task"    # Lcom/miui/mishare/MiShareTask;

    .line 243
    if-eqz p1, :cond_2d

    iget-object v0, p1, Lcom/miui/mishare/MiShareTask;->device:Lcom/miui/mishare/RemoteDevice;

    if-eqz v0, :cond_2d

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 245
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/app/model/MiShareDevice;

    .line 246
    .local v1, "d":Lcom/miui/mishare/app/model/MiShareDevice;
    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/mishare/MiShareTask;->device:Lcom/miui/mishare/RemoteDevice;

    invoke-virtual {v3}, Lcom/miui/mishare/RemoteDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 247
    iget-object v2, p1, Lcom/miui/mishare/MiShareTask;->taskId:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    .line 248
    return-void

    .line 244
    .end local v1    # "d":Lcom/miui/mishare/app/model/MiShareDevice;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 252
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method public blacklist setDeviceState(Ljava/lang/String;IZF)V
    .registers 9
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "showProgress"    # Z
    .param p4, "percent"    # F

    .line 163
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/app/model/MiShareDevice;

    .line 164
    .local v1, "device":Lcom/miui/mishare/app/model/MiShareDevice;
    if-eqz v1, :cond_59

    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v2, :cond_59

    iget-object v2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    .line 165
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 166
    iget v0, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2a

    iget v0, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2e

    :cond_2a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2e

    .line 169
    goto :goto_5a

    .line 171
    :cond_2e
    iget v0, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4c

    .line 172
    new-instance v0, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceId:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setLastSendDevice(Landroid/util/Pair;)V

    .line 173
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mDevices:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mComparator:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$DeviceRssiComparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    :cond_4c
    iput p2, v1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    .line 176
    iput-boolean p3, v1, Lcom/miui/mishare/app/model/MiShareDevice;->showProgress:Z

    .line 177
    iput p4, v1, Lcom/miui/mishare/app/model/MiShareDevice;->progressPercent:F

    .line 178
    invoke-virtual {p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->delayIdle(Ljava/lang/String;I)V

    .line 180
    goto :goto_5a

    .line 182
    .end local v1    # "device":Lcom/miui/mishare/app/model/MiShareDevice;
    :cond_59
    goto :goto_6

    .line 183
    :cond_5a
    :goto_5a
    return-void
.end method

.method public blacklist setInitialAddDevice()V
    .registers 2

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mIsInitialAddDevice:Z

    .line 151
    return-void
.end method

.method public blacklist stopSort()V
    .registers 3

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mStopSort:Z

    .line 187
    iget-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->mSortRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method
