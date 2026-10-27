.class public Lcom/lguplus/Lgu5GNetworkManager;
.super Ljava/lang/Object;
.source "Lgu5GNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/Lgu5GNetworkManager$Callback;
    }
.end annotation


# static fields
.field public static final blacklist INDICATOR_5G:I = 0x1

.field public static final blacklist INDICATOR_5G_ADDED:I = 0x0

.field public static final blacklist INDICATOR_LTE:I = 0x2

.field public static final blacklist INDICATOR_OOS:I = 0x3

.field public static final blacklist INDICATOR_UNKNOWN:I = 0x4

.field private static blacklist LOG_TAG:Ljava/lang/String; = null

.field public static final blacklist RESTRICTDCNR_NO_RESTRICT:I = 0x0

.field public static final blacklist RESTRICTDCNR_RESTRICT:I = 0x1

.field public static final blacklist UPPERLAYERINTICATION_OFF:I = 0x0

.field public static final blacklist UPPERLAYERINTICATION_ON:I = 0x1


# instance fields
.field private final blacklist mCallback:Lcom/lguplus/IMiuiFiveGServiceStateCallback;

.field protected final blacklist mLguCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/lguplus/Lgu5GNetworkManager$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const-string v0, "Lgu5GNetworkManager"

    sput-object v0, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    .line 40
    new-instance v0, Lcom/lguplus/Lgu5GNetworkManager$1;

    invoke-direct {v0, p0}, Lcom/lguplus/Lgu5GNetworkManager$1;-><init>(Lcom/lguplus/Lgu5GNetworkManager;)V

    iput-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager;->mCallback:Lcom/lguplus/IMiuiFiveGServiceStateCallback;

    .line 37
    invoke-virtual {p0, v0}, Lcom/lguplus/Lgu5GNetworkManager;->registerFiveGServiceStateCallback(Lcom/lguplus/IMiuiFiveGServiceStateCallback;)V

    .line 38
    return-void
.end method

.method private blacklist getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .registers 2

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist get5GIndicatorStatus()I
    .registers 6

    .line 85
    const/4 v0, 0x4

    .line 86
    .local v0, "nrConfigType":I
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v1

    .line 89
    .local v1, "slotId":I
    :try_start_9
    invoke-direct {p0}, Lcom/lguplus/Lgu5GNetworkManager;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    .line 90
    .local v2, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v2, :cond_14

    .line 91
    invoke-interface {v2, v1}, Lmiui/telephony/IMiuiTelephony;->get5GIndicatorStatus(I)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_15

    move v0, v3

    .line 95
    .end local v2    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_14
    goto :goto_1d

    .line 93
    :catch_15
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "get5GIndicatorStatus exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1d
    return v0
.end method

.method public blacklist getRestrictDcnrStatus()I
    .registers 6

    .line 122
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 123
    .local v0, "slotId":I
    const/4 v1, 0x1

    .line 125
    .local v1, "restrictDcnr":I
    :try_start_9
    invoke-direct {p0}, Lcom/lguplus/Lgu5GNetworkManager;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    .line 126
    .local v2, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v2, :cond_14

    .line 127
    invoke-interface {v2, v0}, Lmiui/telephony/IMiuiTelephony;->getRestrictDcnrStatus(I)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_15

    move v1, v3

    .line 131
    .end local v2    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_14
    goto :goto_1d

    .line 129
    :catch_15
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getRestrictDcnrStatus exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1d
    return v1
.end method

.method public blacklist getUpperlayerStatus()I
    .registers 6

    .line 104
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 105
    .local v0, "slotId":I
    const/4 v1, 0x0

    .line 107
    .local v1, "upperLayerInd":I
    :try_start_9
    invoke-direct {p0}, Lcom/lguplus/Lgu5GNetworkManager;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    .line 108
    .local v2, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v2, :cond_14

    .line 109
    invoke-interface {v2, v0}, Lmiui/telephony/IMiuiTelephony;->getUpperlayerStatus(I)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_15

    move v1, v3

    .line 113
    .end local v2    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_14
    goto :goto_1d

    .line 111
    :catch_15
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getUpperlayerStatus exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1d
    return v1
.end method

.method public blacklist isFiveGCapable()Z
    .registers 5

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "has5GCapable":Z
    :try_start_1
    invoke-direct {p0}, Lcom/lguplus/Lgu5GNetworkManager;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 70
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v1, :cond_c

    .line 71
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isFiveGCapable()Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 75
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_c
    goto :goto_15

    .line 73
    :catch_d
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isFiveGCapable exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    return v0
.end method

.method public blacklist register5GNetworkCallback(Lcom/lguplus/Lgu5GNetworkManager$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/lguplus/Lgu5GNetworkManager$Callback;

    .line 158
    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 160
    iget-object v1, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_10
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist registerFiveGServiceStateCallback(Lcom/lguplus/IMiuiFiveGServiceStateCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/lguplus/IMiuiFiveGServiceStateCallback;

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/lguplus/Lgu5GNetworkManager;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 144
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v1

    .line 145
    .local v1, "slotId":I
    if-eqz v0, :cond_11

    .line 146
    invoke-interface {v0, p1, v1}, Lmiui/telephony/IMiuiTelephony;->registerFiveGServiceStateCallback(Lcom/lguplus/IMiuiFiveGServiceStateCallback;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 150
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    .end local v1    # "slotId":I
    :cond_11
    goto :goto_1a

    .line 148
    :catch_12
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lguplus/Lgu5GNetworkManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "registerCallback exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method public blacklist unregister5GNetworkCallback()V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lguplus/Lgu5GNetworkManager$Callback;

    .line 184
    .local v2, "callback":Lcom/lguplus/Lgu5GNetworkManager$Callback;
    iget-object v3, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 185
    nop

    .end local v2    # "callback":Lcom/lguplus/Lgu5GNetworkManager$Callback;
    goto :goto_9

    .line 186
    :cond_1c
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public blacklist unregister5GNetworkCallback(Lcom/lguplus/Lgu5GNetworkManager$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/lguplus/Lgu5GNetworkManager$Callback;

    .line 170
    iget-object v0, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 172
    iget-object v1, p0, Lcom/lguplus/Lgu5GNetworkManager;->mLguCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 174
    :cond_10
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
