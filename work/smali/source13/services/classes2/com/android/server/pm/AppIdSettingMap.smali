.class final Lcom/android/server/pm/AppIdSettingMap;
.super Ljava/lang/Object;
.source "AppIdSettingMap.java"


# instance fields
.field private mFirstAvailableAppId:I

.field private final mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayList<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayList<",
            "Lcom/android/server/pm/SettingBase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/pm/SettingBase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    .line 45
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 46
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v2, "AppIdSettingMap.mNonSystemSettings"

    invoke-direct {v1, v0, v0, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 48
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    .line 49
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v2, "AppIdSettingMap.mSystemSettings"

    invoke-direct {v1, v0, v0, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/AppIdSettingMap;)V
    .registers 3
    .param p1, "orig"    # Lcom/android/server/pm/AppIdSettingMap;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    .line 54
    iget-object v0, p1, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayList;

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 55
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 56
    iget-object v0, p1, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    .line 57
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 58
    return-void
.end method

.method private setFirstAvailableAppId(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 116
    iget v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    if-le p1, v0, :cond_6

    .line 117
    iput p1, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    .line 119
    :cond_6
    return-void
.end method


# virtual methods
.method public acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I
    .registers 5
    .param p1, "obj"    # Lcom/android/server/pm/SettingBase;

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 151
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    add-int/lit16 v1, v1, -0x2710

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1f

    .line 152
    iget-object v2, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 153
    iget-object v2, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 154
    add-int/lit16 v2, v1, 0x2710

    return v2

    .line 151
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 159
    .end local v1    # "i":I
    :cond_1f
    const/16 v1, 0x270f

    if-le v0, v1, :cond_25

    .line 160
    const/4 v1, -0x1

    return v1

    .line 163
    :cond_25
    iget-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit16 v1, v0, 0x2710

    return v1
.end method

.method public getSetting(I)Lcom/android/server/pm/SettingBase;
    .registers 5
    .param p1, "appId"    # I

    .line 92
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_19

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 94
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 95
    .local v1, "index":I
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SettingBase;

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return-object v2

    .line 97
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SettingBase;

    return-object v0
.end method

.method public registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "appId"    # I
    .param p2, "setting"    # Lcom/android/server/pm/SettingBase;
    .param p3, "name"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    const/16 v1, 0x2710

    if-lt p1, v1, :cond_27

    .line 63
    iget-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v1

    .line 64
    .local v1, "size":I
    add-int/lit16 v2, p1, -0x2710

    .line 66
    .local v2, "index":I
    :goto_d
    if-lt v2, v1, :cond_18

    .line 67
    iget-object v3, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 70
    :cond_18
    iget-object v3, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 75
    return v0

    .line 77
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0, v2, p2}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v1    # "size":I
    .end local v2    # "index":I
    goto :goto_35

    .line 79
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 84
    return v0

    .line 86
    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 88
    :goto_35
    const/4 v0, 0x1

    return v0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 174
    return-void
.end method

.method public removeSetting(I)V
    .registers 6
    .param p1, "appId"    # I

    .line 102
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_15

    .line 103
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 104
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 105
    .local v1, "index":I
    if-ge v1, v0, :cond_14

    .line 106
    iget-object v2, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_14
    goto :goto_1a

    .line 109
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 111
    :goto_1a
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/AppIdSettingMap;->setFirstAvailableAppId(I)V

    .line 112
    return-void
.end method

.method public replaceSetting(ILcom/android/server/pm/SettingBase;)V
    .registers 8
    .param p1, "appId"    # I
    .param p2, "setting"    # Lcom/android/server/pm/SettingBase;

    .line 122
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_32

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 124
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 125
    .local v1, "index":I
    if-ge v1, v0, :cond_14

    .line 126
    iget-object v2, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 128
    :cond_14
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: calling replaceAppIdLpw to replace SettingBase at appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but nothing is replaced."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 133
    .end local v0    # "size":I
    .end local v1    # "index":I
    :goto_31
    goto :goto_6e

    .line 136
    :cond_32
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_69

    instance-of v0, p2, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_69

    .line 137
    move-object v0, p2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 138
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot replace SYSTEM_UID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 141
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_6e

    .line 142
    :cond_69
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 146
    :goto_6e
    return-void
.end method

.method public snapshot()Lcom/android/server/pm/AppIdSettingMap;
    .registers 2

    .line 168
    new-instance v0, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {v0, p0}, Lcom/android/server/pm/AppIdSettingMap;-><init>(Lcom/android/server/pm/AppIdSettingMap;)V

    return-object v0
.end method
