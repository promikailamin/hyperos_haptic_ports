.class Lcom/android/server/location/gnss/GnssGeofenceProxy;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssGeofenceProxy.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;
    }
.end annotation


# instance fields
.field private final mGeofenceEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 3
    .param p1, "gnssNative"    # Lcom/android/server/location/gnss/hal/GnssNative;

    .line 50
    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 51
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 54
    return-void
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .registers 28
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I

    .line 67
    move-object/from16 v1, p0

    move/from16 v14, p1

    iget-object v15, v1, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 68
    :try_start_7
    iget-object v2, v1, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/location/gnss/hal/GnssNative;->addGeofence(IDDDIIII)Z

    move-result v0

    .line 71
    .local v0, "added":Z
    if-eqz v0, :cond_55

    .line 72
    new-instance v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;-><init>(Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry-IA;)V

    .line 73
    .local v2, "entry":Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;
    iput v14, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_65

    .line 74
    move-wide/from16 v3, p2

    :try_start_29
    iput-wide v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->latitude:D
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_53

    .line 75
    move-wide/from16 v5, p4

    :try_start_2d
    iput-wide v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->longitude:D
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_51

    .line 76
    move-wide/from16 v7, p6

    :try_start_31
    iput-wide v7, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->radius:D
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_4f

    .line 77
    move/from16 v9, p8

    :try_start_35
    iput v9, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->lastTransition:I
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_4d

    .line 78
    move/from16 v10, p9

    :try_start_39
    iput v10, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_4b

    .line 79
    move/from16 v11, p10

    :try_start_3d
    iput v11, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->notificationResponsiveness:I
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_49

    .line 80
    move/from16 v12, p11

    :try_start_41
    iput v12, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->unknownTimer:I

    .line 81
    iget-object v13, v1, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v13, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_63

    .line 84
    .end local v0    # "added":Z
    .end local v2    # "entry":Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;
    :catchall_49
    move-exception v0

    goto :goto_72

    :catchall_4b
    move-exception v0

    goto :goto_70

    :catchall_4d
    move-exception v0

    goto :goto_6e

    :catchall_4f
    move-exception v0

    goto :goto_6c

    :catchall_51
    move-exception v0

    goto :goto_6a

    :catchall_53
    move-exception v0

    goto :goto_68

    .line 71
    .restart local v0    # "added":Z
    :cond_55
    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    .line 83
    :goto_63
    monitor-exit v15

    return v0

    .line 84
    .end local v0    # "added":Z
    :catchall_65
    move-exception v0

    move-wide/from16 v3, p2

    :goto_68
    move-wide/from16 v5, p4

    :goto_6a
    move-wide/from16 v7, p6

    :goto_6c
    move/from16 v9, p8

    :goto_6e
    move/from16 v10, p9

    :goto_70
    move/from16 v11, p10

    :goto_72
    move/from16 v12, p11

    :goto_74
    monitor-exit v15
    :try_end_75
    .catchall {:try_start_41 .. :try_end_75} :catchall_76

    throw v0

    :catchall_76
    move-exception v0

    goto :goto_74
.end method

.method public isHardwareGeofenceSupported()Z
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative;->isGeofencingSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 60
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public onHalRestarted()V
    .registers 16

    .line 129
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 131
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    .line 132
    .local v2, "entry":Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v4, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I

    iget-wide v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->latitude:D

    iget-wide v7, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->longitude:D

    iget-wide v9, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->radius:D

    iget v11, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->lastTransition:I

    iget v12, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I

    iget v13, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->notificationResponsiveness:I

    iget v14, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->unknownTimer:I

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/location/gnss/hal/GnssNative;->addGeofence(IDDDIIII)Z

    move-result v3

    .line 137
    .local v3, "added":Z
    if-eqz v3, :cond_37

    iget-boolean v4, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    if-eqz v4, :cond_37

    .line 138
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I

    invoke-virtual {v4, v5}, Lcom/android/server/location/gnss/hal/GnssNative;->pauseGeofence(I)Z

    .line 130
    .end local v2    # "entry":Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;
    .end local v3    # "added":Z
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 141
    .end local v1    # "i":I
    :cond_3a
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public pauseHardwareGeofence(I)Z
    .registers 6
    .param p1, "geofenceId"    # I

    .line 100
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->pauseGeofence(I)Z

    move-result v1

    .line 102
    .local v1, "paused":Z
    if-eqz v1, :cond_18

    .line 103
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    .line 104
    .local v2, "entry":Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;
    if-eqz v2, :cond_18

    .line 105
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    .line 108
    .end local v2    # "entry":Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;
    :cond_18
    monitor-exit v0

    return v1

    .line 109
    .end local v1    # "paused":Z
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public removeHardwareGeofence(I)Z
    .registers 5
    .param p1, "geofenceId"    # I

    .line 89
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->removeGeofence(I)Z

    move-result v1

    .line 91
    .local v1, "removed":Z
    if-eqz v1, :cond_10

    .line 92
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 94
    :cond_10
    monitor-exit v0

    return v1

    .line 95
    .end local v1    # "removed":Z
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public resumeHardwareGeofence(II)Z
    .registers 7
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .line 114
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->resumeGeofence(II)Z

    move-result v1

    .line 116
    .local v1, "resumed":Z
    if-eqz v1, :cond_1a

    .line 117
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    .line 118
    .local v2, "entry":Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;
    if-eqz v2, :cond_1a

    .line 119
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    .line 120
    iput p2, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I

    .line 123
    .end local v2    # "entry":Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;
    :cond_1a
    monitor-exit v0

    return v1

    .line 124
    .end local v1    # "resumed":Z
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method
