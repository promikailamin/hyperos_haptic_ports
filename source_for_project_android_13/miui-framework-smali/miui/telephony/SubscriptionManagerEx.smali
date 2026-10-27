.class public Lmiui/telephony/SubscriptionManagerEx;
.super Lmiui/telephony/SubscriptionManager;
.source "SubscriptionManagerEx.java"

# interfaces
.implements Landroid/telephony/IMiuiSubscriptionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;,
        Lmiui/telephony/SubscriptionManagerEx$Holder;,
        Lmiui/telephony/SubscriptionManagerEx$ConstantsDefiner;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_DEFAULT_DATA_SLOT_CHANGED:Ljava/lang/String; = "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

.field public static final blacklist ACTION_DEFAULT_DATA_SLOT_READY:Ljava/lang/String; = "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_READY"

.field private static final blacklist ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field static final blacklist DEFAULT_DATA_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.data"

.field static final blacklist DEFAULT_VOICE_SLOT_PROPERTY:Ljava/lang/String; = "persist.radio.default.voice"

.field public static final blacklist KEY_OLD_DATA_SLOT:Ljava/lang/String; = "old_data_slot"

.field public static final blacklist KEY_SIM_INSERT_STATE_ARRAY:Ljava/lang/String; = "sim_insert_state_array"

.field public static final blacklist SIM_CHANGED:I = 0x4

.field public static final blacklist SIM_NEW_CARD:I = 0x2

.field public static final blacklist SIM_NO_CARD:I = 0x1

.field public static final blacklist SIM_NO_CHANGE:I = 0x0

.field public static final blacklist SIM_REMOVED:I = 0x3

.field private static final blacklist SUBSCRIPTION_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitSubscriptionListener(Lmiui/telephony/SubscriptionManagerEx;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/telephony/SubscriptionManagerEx;->initSubscriptionListener(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lmiui/telephony/SubscriptionManagerEx$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lmiui/telephony/SubscriptionManagerEx;->SUBSCRIPTION_INFO_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 136
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManager;-><init>()V

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx$1;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManagerEx$1;-><init>(Lmiui/telephony/SubscriptionManagerEx;)V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/telephony/SubscriptionManagerEx-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;-><init>()V

    return-void
.end method

.method public static blacklist getDefault()Lmiui/telephony/SubscriptionManagerEx;
    .registers 1

    .line 140
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

    return-object v0
.end method

.method private blacklist getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .registers 2

    .line 442
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    return-object v0
.end method

.method private blacklist initSubscriptionListener(Z)V
    .registers 4
    .param p1, "checkLooper"    # Z

    .line 144
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-eqz v0, :cond_5

    .line 145
    return-void

    .line 147
    :cond_5
    if-eqz p1, :cond_42

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_42

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSubscriptionListener failed for pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threadName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "SubMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 152
    :cond_42
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx$2;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManagerEx$2;-><init>(Lmiui/telephony/SubscriptionManagerEx;)V

    iput-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 158
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 159
    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I
    .registers 5
    .param p0, "arg0"    # Landroid/telephony/SubscriptionInfo;
    .param p1, "arg1"    # Landroid/telephony/SubscriptionInfo;

    .line 106
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 107
    .local v0, "flag":I
    if-nez v0, :cond_15

    .line 109
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    sub-int/2addr v1, v2

    return v1

    .line 111
    :cond_15
    return v0
.end method


# virtual methods
.method protected whitelist addOnSubscriptionsChangedListenerInternal()V
    .registers 4

    .line 163
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 164
    invoke-direct {p0, v2}, Lmiui/telephony/SubscriptionManagerEx;->initSubscriptionListener(Z)V

    .line 165
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-nez v0, :cond_22

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lmiui/telephony/SubscriptionManagerEx$3;

    invoke-direct {v1, p0}, Lmiui/telephony/SubscriptionManagerEx$3;-><init>(Lmiui/telephony/SubscriptionManagerEx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_22
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3d
    return-void
.end method

.method protected whitelist getAllSubscriptionInfoListInternal()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 222
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAvailableSubscriptionInfoList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 203
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 205
    .local v0, "sis":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_e

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 209
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v1, "rets":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 212
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-gez v3, :cond_33

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 213
    goto :goto_40

    .line 215
    :cond_33
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-static {v3}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 217
    .end local v2    # "i":I
    :cond_43
    return-object v1
.end method

.method public whitelist getDefaultDataSlotId()I
    .registers 3

    .line 402
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    const-string v1, "persist.radio.default.data"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 403
    .local v0, "ret":I
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotIdInternal()I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    return v1
.end method

.method public whitelist getDefaultDataSubscriptionId()I
    .registers 3

    .line 388
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 389
    .local v0, "subId":I
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    if-ne v0, v1, :cond_10

    .line 390
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotIdInternal()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    .line 392
    :cond_10
    return v0
.end method

.method public whitelist getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .registers 2

    .line 397
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist getDefaultSlotIdInternal()I
    .registers 2

    .line 310
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    invoke-interface {v0}, Lmiui/telephony/IMiuiTelephony;->getSystemDefaultSlotId()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 311
    :catch_9
    move-exception v0

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultSmsSubscriptionId()I
    .registers 3

    .line 421
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 422
    .local v0, "subId":I
    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_d

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1
.end method

.method public whitelist getDefaultSmsSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .registers 2

    .line 427
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefaultVoiceSlotId()I
    .registers 3

    .line 369
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    const-string v1, "persist.radio.default.voice"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getDefaultVoiceSubscriptionId()I
    .registers 3

    .line 358
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 359
    .local v0, "subId":I
    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_d

    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1
.end method

.method public whitelist getDefaultVoiceSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .registers 2

    .line 364
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist getSlotId(I)I
    .registers 7
    .param p1, "subId"    # I

    .line 319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 321
    .local v0, "identity":J
    :try_start_4
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    .line 322
    .local v3, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, p1, :cond_26

    .line 323
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_30

    .line 327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    return v2

    .line 325
    .end local v3    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_26
    goto :goto_c

    .line 327
    :cond_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    nop

    .line 329
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    return v2

    .line 327
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    throw v2
.end method

.method public whitelist getSubscriptionIdForSlot(I)I
    .registers 7
    .param p1, "slotId"    # I

    .line 334
    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 335
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    return v0

    .line 338
    :cond_9
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_10

    .line 339
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    return v0

    .line 341
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 343
    .local v0, "identity":J
    :try_start_14
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    .line 344
    .local v3, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    if-ne v4, p1, :cond_36

    .line 345
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_4b

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    return v2

    .line 347
    .end local v3    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_36
    goto :goto_1c

    .line 349
    :cond_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 350
    nop

    .line 352
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 353
    .local v2, "subIds":[I
    if-eqz v2, :cond_48

    array-length v3, v2

    if-lez v3, :cond_48

    const/4 v3, 0x0

    aget v3, v2, v3

    goto :goto_4a

    :cond_48
    sget v3, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    :goto_4a
    return v3

    .line 349
    .end local v2    # "subIds":[I
    :catchall_4b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 350
    throw v2
.end method

.method protected whitelist getSubscriptionInfoListInternal()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 227
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    .line 228
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_d

    .line 230
    sget-object v1, Lmiui/telephony/SubscriptionManagerEx;->SUBSCRIPTION_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 232
    :cond_d
    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected whitelist removeOnSubscriptionsChangedListenerInternal()V
    .registers 4

    .line 186
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-eqz v0, :cond_18

    .line 188
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 191
    :cond_18
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_36

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 193
    :try_start_26
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    iget-object v1, p0, Lmiui/telephony/SubscriptionManagerEx;->mSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_2e

    .line 196
    goto :goto_36

    .line 194
    :catch_2e
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SubMgr"

    const-string v2, "unregister SubscriptionChangedReceiver error!!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_36
    :goto_36
    return-void
.end method

.method public whitelist setDefaultDataSlotId(I)V
    .registers 5
    .param p1, "slotId"    # I

    .line 408
    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_39

    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_b

    goto :goto_39

    .line 413
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lmiui/telephony/IMiuiTelephony;->setDefaultDataSlotId(ILjava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    .line 416
    goto :goto_38

    .line 414
    :catch_19
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set default data slot id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubMgr"

    invoke-static {v2, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_38
    return-void

    .line 409
    :cond_39
    :goto_39
    return-void
.end method

.method public whitelist setDefaultSmsSubscriptionId(I)V
    .registers 4
    .param p1, "subId"    # I

    .line 432
    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, p1

    goto :goto_a

    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    .line 434
    .local v0, "settingSubId":I
    :goto_a
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq v0, v1, :cond_1b

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSmsSubscriptionId()I

    move-result v1

    if-ne v0, v1, :cond_15

    goto :goto_1b

    .line 438
    :cond_15
    sget-object v1, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 439
    return-void

    .line 435
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist setDefaultVoiceSlotId(I)V
    .registers 5
    .param p1, "slotId"    # I

    .line 374
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_5

    .line 375
    return-void

    .line 379
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    invoke-static {p1}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, p1

    goto :goto_13

    :cond_11
    sget v1, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    :goto_13
    sget-object v2, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    .line 380
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-interface {v0, v1, v2}, Lmiui/telephony/IMiuiTelephony;->setDefaultVoiceSlotId(ILjava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1d

    .line 383
    goto :goto_3c

    .line 381
    :catch_1d
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set default voice slot id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubMgr"

    invoke-static {v2, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3c
    return-void
.end method

.method public blacklist setDisplayNameForSlot(Ljava/lang/String;I)I
    .registers 4
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 260
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 261
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p2, v0, :cond_19

    .line 265
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 268
    :cond_19
    invoke-virtual {p0, p2}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist setDisplayNameForSubscription(Ljava/lang/String;I)I
    .registers 5
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 242
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 243
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p2, v0, :cond_15

    .line 247
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSlot(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 250
    :cond_15
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist setDisplayNumberForSlot(Ljava/lang/String;I)I
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 296
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 297
    const/4 v0, 0x0

    return v0

    .line 300
    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SLOT_ID:I

    if-ne p2, v0, :cond_19

    .line 301
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 304
    :cond_19
    invoke-virtual {p0, p2}, Lmiui/telephony/SubscriptionManagerEx;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNameForSubscription(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist setDisplayNumberForSubscription(Ljava/lang/String;I)I
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 278
    invoke-static {p2}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 279
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p2, v0, :cond_15

    .line 283
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManagerEx;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/telephony/SubscriptionManagerEx;->setDisplayNumberForSlot(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 286
    :cond_15
    sget-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->SUBSCRIPTION_MANAGER:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
