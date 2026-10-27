.class public Lcom/android/server/location/settings/LocationSettings;
.super Ljava/lang/Object;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;,
        Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;
    }
.end annotation


# static fields
.field private static final LOCATION_DIRNAME:Ljava/lang/String; = "location"

.field private static final LOCATION_SETTINGS_FILENAME:Ljava/lang/String; = "settings"


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mUserSettings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/location/settings/LocationSettings;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    return-void
.end method

.method private getUserSettingsStore(I)Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;
    .registers 8
    .param p1, "userId"    # I

    .line 88
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    .line 90
    .local v1, "settingsStore":Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;
    if-nez v1, :cond_2b

    .line 91
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettingsDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "location"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "settings"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v2, "file":Ljava/io/File;
    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/settings/LocationSettings;->createUserSettingsStore(ILjava/io/File;)Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    move-result-object v3

    move-object v1, v3

    .line 94
    iget-object v3, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    .end local v2    # "file":Ljava/io/File;
    :cond_2b
    monitor-exit v0

    return-object v1

    .line 97
    .end local v1    # "settingsStore":Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method


# virtual methods
.method protected createUserSettingsStore(ILjava/io/File;)Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "file"    # Ljava/io/File;

    .line 84
    new-instance v0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;-><init>(Lcom/android/server/location/settings/LocationSettings;ILjava/io/File;)V

    return-object v0
.end method

.method final deleteFiles()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 152
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 153
    iget-object v3, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->deleteFile()V

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 155
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_1a
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public final dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 115
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_58

    .line 118
    .local v0, "userIds":[I
    nop

    .line 120
    iget-object v1, p0, Lcom/android/server/location/settings/LocationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 121
    const-string v1, "ADAS Location Setting: "

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 123
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_47

    .line 124
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 125
    array-length v1, v0

    :goto_28
    if-ge v2, v1, :cond_54

    aget v3, v0, v2

    .line 126
    .local v3, "userId":I
    const-string v4, "[u"

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 128
    const-string v4, "] "

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 125
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 132
    :cond_47
    aget v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 134
    :cond_54
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 136
    :cond_57
    return-void

    .line 116
    .end local v0    # "userIds":[I
    :catch_58
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected final fireListeners(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "oldSettings"    # Lcom/android/server/location/settings/LocationUserSettings;
    .param p3, "newSettings"    # Lcom/android/server/location/settings/LocationUserSettings;

    .line 160
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    .line 161
    .local v1, "listener":Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;->onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    .line 162
    .end local v1    # "listener":Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;
    goto :goto_6

    .line 163
    :cond_16
    return-void
.end method

.method final flushFiles()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 142
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 143
    iget-object v3, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettings:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->flushFile()V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 145
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_1a
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public final getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;
    .registers 3
    .param p1, "userId"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettingsStore(I)Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->get()Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/settings/LocationUserSettings;

    return-object v0
.end method

.method protected getUserSettingsDir(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 80
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final registerLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    .line 70
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public final unregisterLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    .line 76
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings;->mUserSettingsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public final updateUserSettings(ILjava/util/function/Function;)V
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Lcom/android/server/location/settings/LocationUserSettings;",
            "Lcom/android/server/location/settings/LocationUserSettings;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p2, "updater":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;>;"
    invoke-direct {p0, p1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettingsStore(I)Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->update(Ljava/util/function/Function;)V

    .line 109
    return-void
.end method
