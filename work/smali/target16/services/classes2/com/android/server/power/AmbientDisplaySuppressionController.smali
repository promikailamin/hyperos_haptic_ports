.class public Lcom/android/server/power/AmbientDisplaySuppressionController;
.super Ljava/lang/Object;
.source "AmbientDisplaySuppressionController.java"


# instance fields
.field public final mCallback:Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mSuppressionTokens:Ljava/util/Set;

.field public final mSuppressions:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressions:Ljava/util/Map;

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;

    iput-object p1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mCallback:Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;

    return-void
.end method


# virtual methods
.method public calculateSuppression()I
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressions:Ljava/util/Map;

    monitor-enter v0

    .line 208
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_e

    :catchall_26
    move-exception p0

    goto :goto_2a

    .line 211
    :cond_28
    monitor-exit v0

    return v1

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 233
    const-string v0, "AmbientDisplaySuppressionController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ambientDisplaySuppressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSuppressionTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSuppressions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressions:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2

    monitor-enter p0

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_15

    .line 244
    const-string/jumbo v0, "statusbar"

    .line 245
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_19

    .line 247
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_13

    monitor-exit p0

    return-object v0

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_13

    throw v0
.end method

.method public getSuppressionTokens(I)Ljava/util/List;
    .registers 6

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressions:Ljava/util/Map;

    monitor-enter v1

    .line 167
    :try_start_8
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;

    invoke-virtual {v3, p1}, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->belongsToId(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 169
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;

    invoke-static {v2}, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;->-$$Nest$fgettag(Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_38
    move-exception p0

    goto :goto_3c

    .line 172
    :cond_3a
    monitor-exit v1

    return-object v0

    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_38

    throw p0
.end method

.method public isSuppressed()Z
    .registers 2

    .line 221
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->calculateSuppression()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isSuppressed(Ljava/lang/String;I)Z
    .registers 5

    .line 193
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressions:Ljava/util/Map;

    new-instance v0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;

    .line 194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;-><init>(ILjava/lang/String;Lcom/android/server/power/AmbientDisplaySuppressionController-IA;)V

    .line 193
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public suppress(Ljava/lang/String;II)V
    .registers 6

    .line 130
    new-instance v0, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/power/AmbientDisplaySuppressionController$SuppressionToken;-><init>(ILjava/lang/String;Lcom/android/server/power/AmbientDisplaySuppressionController-IA;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->calculateSuppression()I

    move-result p1

    if-eqz p3, :cond_19

    .line 135
    iget-object p2, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressions:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 137
    :cond_19
    iget-object p2, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressions:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->calculateSuppression()I

    move-result p2

    if-eq p1, p2, :cond_29

    .line 142
    iget-object p1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mCallback:Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;

    invoke-interface {p1, p2}, Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;->onSuppressionChanged(I)V

    .line 146
    :cond_29
    :try_start_29
    iget-object p1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    monitor-enter p1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_3f

    .line 147
    :try_start_2c
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    const/4 p3, 0x2

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_36

    const/4 p2, 0x1

    goto :goto_37

    :cond_36
    const/4 p2, 0x0

    :goto_37
    invoke-interface {p0, p2}, Lcom/android/internal/statusbar/IStatusBarService;->suppressAmbientDisplay(Z)V

    .line 150
    monitor-exit p1

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw p0
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception p0

    .line 152
    const-string p1, "AmbientDisplaySuppressionController"

    const-string p2, "Failed to suppress ambient display"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
