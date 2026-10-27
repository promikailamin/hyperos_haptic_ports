.class public Lcom/android/server/app/GameManagerServiceStub;
.super Ljava/lang/Object;
.source "GameManagerServiceStub.java"


# instance fields
.field final DOWNSCALE_CHANGE_IDS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/ArraySet;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Long;

    .line 31
    const-wide/32 v2, 0xa09e1d7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 32
    const-wide/32 v2, 0xae57a6b

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 33
    const-wide/32 v2, 0xb52b546

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 34
    const-wide/32 v2, 0xa8bb021

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 35
    const-wide/32 v2, 0xb52b573

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 36
    const-wide/32 v2, 0xa8bb06d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 37
    const-wide/32 v2, 0xb52b550

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 38
    const-wide/32 v2, 0xa8bb033

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 39
    const-wide/32 v2, 0xb52b674

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 40
    const-wide/32 v2, 0xa8bb015

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 41
    const-wide/32 v2, 0xb52b576

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 42
    const-wide/32 v2, 0xb52b676

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 43
    const-wide/32 v2, 0xb52b555

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 44
    const-wide/32 v2, 0xb52b678

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerServiceStub;->DOWNSCALE_CHANGE_IDS:Landroid/util/ArraySet;

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/android/server/app/GameManagerServiceStub;
    .registers 1

    .line 49
    const-class v0, Lcom/android/server/app/GameManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public addSizeCompatApps(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 115
    return-void
.end method

.method public downscaleForSwitchResolution()V
    .registers 1

    .line 101
    return-void
.end method

.method public downscaleWithPackageNameAndRatio(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ratio"    # Ljava/lang/String;

    .line 103
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 113
    return-void
.end method

.method public dynamicRefresh(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "ratio"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 105
    return-void
.end method

.method getCompatChangeId(Ljava/lang/String;)J
    .registers 4
    .param p1, "raw"    # Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_ce

    :cond_7
    goto/16 :goto_93

    :sswitch_9
    const-string v0, "0.85"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_94

    :sswitch_15
    const-string v0, "0.75"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto/16 :goto_94

    :sswitch_21
    const-string v0, "0.65"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_94

    :sswitch_2c
    const-string v0, "0.55"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_94

    :sswitch_36
    const-string v0, "0.45"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_94

    :sswitch_40
    const-string v0, "0.35"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_94

    :sswitch_4a
    const-string v0, "0.9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_94

    :sswitch_55
    const-string v0, "0.8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_94

    :sswitch_60
    const-string v0, "0.7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_94

    :sswitch_6b
    const-string v0, "0.6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_94

    :sswitch_75
    const-string v0, "0.5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_94

    :sswitch_7f
    const-string v0, "0.4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_94

    :sswitch_89
    const-string v0, "0.3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_94

    :goto_93
    const/4 v0, -0x1

    :goto_94
    packed-switch v0, :pswitch_data_104

    .line 89
    const-wide/16 v0, 0x0

    return-wide v0

    .line 87
    :pswitch_9a
    const-wide/32 v0, 0xae57a6b

    return-wide v0

    .line 85
    :pswitch_9e
    const-wide/32 v0, 0xb52b546

    return-wide v0

    .line 83
    :pswitch_a2
    const-wide/32 v0, 0xa8bb021

    return-wide v0

    .line 81
    :pswitch_a6
    const-wide/32 v0, 0xb52b573

    return-wide v0

    .line 79
    :pswitch_aa
    const-wide/32 v0, 0xa8bb06d

    return-wide v0

    .line 77
    :pswitch_ae
    const-wide/32 v0, 0xb52b550

    return-wide v0

    .line 75
    :pswitch_b2
    const-wide/32 v0, 0xa8bb033

    return-wide v0

    .line 73
    :pswitch_b6
    const-wide/32 v0, 0xb52b674

    return-wide v0

    .line 71
    :pswitch_ba
    const-wide/32 v0, 0xa8bb015

    return-wide v0

    .line 69
    :pswitch_be
    const-wide/32 v0, 0xb52b576

    return-wide v0

    .line 67
    :pswitch_c2
    const-wide/32 v0, 0xb52b676

    return-wide v0

    .line 65
    :pswitch_c6
    const-wide/32 v0, 0xb52b555

    return-wide v0

    .line 63
    :pswitch_ca
    const-wide/32 v0, 0xb52b678

    return-wide v0

    :sswitch_data_ce
    .sparse-switch
        0xb9f5 -> :sswitch_89
        0xb9f6 -> :sswitch_7f
        0xb9f7 -> :sswitch_75
        0xb9f8 -> :sswitch_6b
        0xb9f9 -> :sswitch_60
        0xb9fa -> :sswitch_55
        0xb9fb -> :sswitch_4a
        0x1684e0 -> :sswitch_40
        0x1684ff -> :sswitch_36
        0x16851e -> :sswitch_2c
        0x16853d -> :sswitch_21
        0x16855c -> :sswitch_15
        0x16857b -> :sswitch_9
    .end sparse-switch

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_c6
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
    .end packed-switch
.end method

.method public handleAppDied(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 94
    return-void
.end method

.method registerDownscaleObserver(Landroid/content/Context;)V
    .registers 2
    .param p1, "mContext"    # Landroid/content/Context;

    .line 54
    return-void
.end method

.method public setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 96
    return-void
.end method

.method public shellCmd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "ratio"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 111
    return-void
.end method

.method toggleDownscale(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageNameParam"    # Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toggleDownscaleForStopedApp(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 117
    return-void
.end method
