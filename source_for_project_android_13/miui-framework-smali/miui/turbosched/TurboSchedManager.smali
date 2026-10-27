.class public Lmiui/turbosched/TurboSchedManager;
.super Ljava/lang/Object;
.source "TurboSchedManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "turbosched"


# instance fields
.field blacklist mContext:Landroid/content/Context;

.field blacklist mService:Lmiui/turbosched/ITurboSchedManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "turbosched"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    .line 16
    iput-object p1, p0, Lmiui/turbosched/TurboSchedManager;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method private blacklist getService()Lmiui/turbosched/ITurboSchedManager;
    .registers 2

    .line 141
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    if-nez v0, :cond_10

    .line 142
    const-string v0, "turbosched"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    .line 144
    :cond_10
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    return-object v0
.end method


# virtual methods
.method public whitelist frameTurboSceneEnd(Ljava/lang/String;)V
    .registers 4
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 123
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lmiui/turbosched/ITurboSchedManager;->frameTurboMarkScene(Ljava/lang/String;Z)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    .line 126
    goto :goto_11

    .line 124
    :catch_d
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist frameTurboSceneStart(Ljava/lang/String;)V
    .registers 4
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 113
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lmiui/turbosched/ITurboSchedManager;->frameTurboMarkScene(Ljava/lang/String;Z)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    .line 116
    goto :goto_11

    .line 114
    :catch_d
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist frameTurboTrigger(ZLjava/util/List;Ljava/util/List;)V
    .registers 5
    .param p1, "turbo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p2, "uiThreads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "scenes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 133
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/turbosched/ITurboSchedManager;->frameTurboTrigger(ZLjava/util/List;Ljava/util/List;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 136
    goto :goto_10

    .line 134
    :catch_c
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist setTurboSchedAction([IJ)Z
    .registers 5
    .param p1, "tid"    # [I
    .param p2, "time"    # J

    .line 20
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 22
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/turbosched/ITurboSchedManager;->setTurboSchedAction([IJ)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 23
    :catch_d
    move-exception v0

    .line 24
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 27
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setTurboSchedActionToLittleCore([IJ)V
    .registers 5
    .param p1, "tids"    # [I
    .param p2, "time"    # J

    .line 61
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 63
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/turbosched/ITurboSchedManager;->setTurboSchedActionToLittleCore([IJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 66
    goto :goto_10

    .line 64
    :catch_c
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 68
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist setTurboSchedActionWithBoostFrequency([IJ)V
    .registers 5
    .param p1, "tids"    # [I
    .param p2, "time"    # J

    .line 41
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 43
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/turbosched/ITurboSchedManager;->setTurboSchedActionWithBoostFrequency([IJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 46
    goto :goto_10

    .line 44
    :catch_c
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 48
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist setTurboSchedActionWithPriority([IJ)V
    .registers 5
    .param p1, "tids"    # [I
    .param p2, "time"    # J

    .line 51
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 53
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/turbosched/ITurboSchedManager;->setTurboSchedActionWithPriority([IJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 56
    goto :goto_10

    .line 54
    :catch_c
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist setTurboSchedActionWithoutBlock([IJ)V
    .registers 5
    .param p1, "tids"    # [I
    .param p2, "time"    # J

    .line 31
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 33
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/turbosched/ITurboSchedManager;->setTurboSchedActionWithoutBlock([IJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 36
    goto :goto_10

    .line 34
    :catch_c
    move-exception v0

    .line 35
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 38
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist triggerBoostAction(I)V
    .registers 3
    .param p1, "boostMs"    # I

    .line 71
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 73
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    invoke-interface {v0, p1}, Lmiui/turbosched/ITurboSchedManager;->triggerBoostAction(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 76
    goto :goto_10

    .line 74
    :catch_c
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist triggerBoostTask(II)V
    .registers 4
    .param p1, "tid"    # I
    .param p2, "boostSec"    # I

    .line 81
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 83
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    invoke-interface {v0, p1, p2}, Lmiui/turbosched/ITurboSchedManager;->triggerBoostTask(II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 86
    goto :goto_10

    .line 84
    :catch_c
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist triggerBoostTaskEnd(I)V
    .registers 4
    .param p1, "tid"    # I

    .line 101
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 103
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lmiui/turbosched/ITurboSchedManager;->triggerBoostTask(II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    .line 106
    goto :goto_11

    .line 104
    :catch_d
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist triggerBoostTaskStart(I)V
    .registers 4
    .param p1, "tid"    # I

    .line 91
    invoke-direct {p0}, Lmiui/turbosched/TurboSchedManager;->getService()Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 93
    :try_start_6
    iget-object v0, p0, Lmiui/turbosched/TurboSchedManager;->mService:Lmiui/turbosched/ITurboSchedManager;

    const v1, 0x7fffffff

    invoke-interface {v0, p1, v1}, Lmiui/turbosched/ITurboSchedManager;->triggerBoostTask(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    .line 96
    goto :goto_13

    .line 94
    :catch_f
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    return-void
.end method
