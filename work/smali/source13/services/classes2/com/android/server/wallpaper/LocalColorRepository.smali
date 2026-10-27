.class public Lcom/android/server/wallpaper/LocalColorRepository;
.super Ljava/lang/Object;
.source "LocalColorRepository.java"


# instance fields
.field mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            ">;"
        }
    .end annotation
.end field

.field mLocalColorAreas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 44
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public addAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)V
    .registers 10
    .param p1, "consumer"    # Landroid/app/ILocalWallpaperColorConsumer;
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;I)V"
        }
    .end annotation

    .line 53
    .local p2, "areas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 55
    .local v1, "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Landroid/graphics/RectF;>;>;"
    const/4 v2, 0x0

    .line 56
    .local v2, "displayAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-nez v1, :cond_2d

    .line 58
    :try_start_f
    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/LocalColorRepository;Landroid/app/ILocalWallpaperColorConsumer;)V

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1c} :catch_1d

    .line 62
    goto :goto_21

    .line 60
    :catch_1d
    move-exception v3

    .line 61
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 63
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_21
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v3

    .line 64
    iget-object v3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 66
    :cond_2d
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/util/ArraySet;

    .line 68
    :goto_34
    if-nez v2, :cond_3f

    .line 69
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 70
    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    :cond_3f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_52

    .line 74
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 76
    .end local v3    # "i":I
    :cond_52
    iget-object v3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 77
    return-void
.end method

.method public forEachCallback(Ljava/util/function/Consumer;Landroid/graphics/RectF;I)V
    .registers 6
    .param p2, "area"    # Landroid/graphics/RectF;
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            ">;",
            "Landroid/graphics/RectF;",
            "I)V"
        }
    .end annotation

    .line 148
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/ILocalWallpaperColorConsumer;>;"
    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wallpaper/LocalColorRepository;ILandroid/graphics/RectF;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 155
    return-void
.end method

.method public getAreasByDisplayId(I)Ljava/util/List;
    .registers 8
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "areas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 129
    iget-object v2, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 130
    .local v2, "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Landroid/graphics/RectF;>;>;"
    if-nez v2, :cond_19

    goto :goto_35

    .line 131
    :cond_19
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 132
    .local v3, "displayAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-nez v3, :cond_22

    goto :goto_35

    .line 133
    :cond_22
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_23
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_35

    .line 134
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 128
    .end local v2    # "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Landroid/graphics/RectF;>;>;"
    .end local v3    # "displayAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    .end local v4    # "j":I
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 137
    .end local v1    # "i":I
    :cond_38
    return-object v0
.end method

.method protected isCallbackAvailable(Landroid/app/ILocalWallpaperColorConsumer;)Z
    .registers 4
    .param p1, "callback"    # Landroid/app/ILocalWallpaperColorConsumer;

    .line 164
    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method synthetic lambda$addAreas$0$com-android-server-wallpaper-LocalColorRepository(Landroid/app/ILocalWallpaperColorConsumer;)V
    .registers 4
    .param p1, "consumer"    # Landroid/app/ILocalWallpaperColorConsumer;

    .line 59
    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic lambda$forEachCallback$1$com-android-server-wallpaper-LocalColorRepository(ILandroid/graphics/RectF;Ljava/util/function/Consumer;Landroid/app/ILocalWallpaperColorConsumer;)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "area"    # Landroid/graphics/RectF;
    .param p3, "callback"    # Ljava/util/function/Consumer;
    .param p4, "cb"    # Landroid/app/ILocalWallpaperColorConsumer;

    .line 149
    invoke-interface {p4}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 150
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 151
    .local v1, "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Landroid/graphics/RectF;>;>;"
    if-nez v1, :cond_f

    return-void

    .line 152
    :cond_f
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 153
    .local v2, "displayAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v2, :cond_20

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {p3, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 154
    :cond_20
    return-void
.end method

.method public removeAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)Ljava/util/List;
    .registers 12
    .param p1, "consumer"    # Landroid/app/ILocalWallpaperColorConsumer;
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 88
    .local p2, "areas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 89
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 90
    .local v1, "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Landroid/graphics/RectF;>;>;"
    const/4 v2, 0x0

    .line 91
    .local v2, "registeredAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v1, :cond_49

    .line 92
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/util/ArraySet;

    .line 93
    if-nez v2, :cond_1e

    .line 94
    iget-object v3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_38

    .line 96
    :cond_1e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 97
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 99
    .end local v3    # "i":I
    :cond_2f
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_38

    .line 100
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 103
    :cond_38
    :goto_38
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_4e

    .line 104
    iget-object v3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_4e

    .line 108
    :cond_49
    iget-object v3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 110
    :cond_4e
    :goto_4e
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v3, "purged":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_54
    iget-object v5, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_9e

    .line 112
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5d
    iget-object v6, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_9b

    .line 113
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_6c
    iget-object v7, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_98

    .line 114
    iget-object v7, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    .line 112
    .end local v6    # "k":I
    :cond_98
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 111
    .end local v5    # "j":I
    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 118
    .end local v4    # "i":I
    :cond_9e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v4
.end method
