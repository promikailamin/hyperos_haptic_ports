.class public Lcom/android/server/audio/MusicFxHelper$MySparseArray;
.super Landroid/util/SparseArray;
.source "MusicFxHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MusicFxHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MusicFxHelper;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/MusicFxHelper;Lcom/android/server/audio/MusicFxHelper-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;-><init>(Lcom/android/server/audio/MusicFxHelper;)V

    return-void
.end method


# virtual methods
.method public put(ILcom/android/server/audio/MusicFxHelper$PackageSessions;)V
    .registers 12

    .line 103
    const-string v1, "com.android.musicfx"

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v2, "AS.MusicFxHelper"

    if-nez v0, :cond_76

    .line 106
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v3}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmPackageName(Lcom/android/server/audio/MusicFxHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_19

    goto :goto_30

    :catch_19
    move-exception v0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException with getPackageProcessState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    :goto_30
    const/4 v3, 0x6

    if-le v0, v3, :cond_62

    .line 112
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.musicfx.KeepAliveService"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 114
    iget-object v3, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fputmIsBound(Lcom/android/server/audio/MusicFxHelper;Z)V

    .line 115
    iget-object v3, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v3}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmContext(Lcom/android/server/audio/MusicFxHelper;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v5}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmMusicFxBindConnection(Lcom/android/server/audio/MusicFxHelper;)Landroid/content/ServiceConnection;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    .line 117
    invoke-static {v6}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$mgetCurrentUserId(Lcom/android/server/audio/MusicFxHelper;)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 115
    invoke-virtual {v3, v1, v5, v4, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 118
    const-string v1, "bindService to com.android.musicfx"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.musicfx procState "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_76
    :try_start_76
    iget-object v0, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v0}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmUidObserverToken(Lcom/android/server/audio/MusicFxHelper;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_b5

    .line 125
    iget-object v0, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v1}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmEffectUidObserver(Lcom/android/server/audio/MusicFxHelper;)Landroid/app/IUidObserver;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v1}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmPackageName(Lcom/android/server/audio/MusicFxHelper;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {p1}, [I

    move-result-object v8

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-interface/range {v3 .. v8}, Landroid/app/IActivityManager;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fputmUidObserverToken(Lcom/android/server/audio/MusicFxHelper;Landroid/os/IBinder;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registered to observer with UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    :catch_b3
    move-exception v0

    goto :goto_e8

    .line 130
    :cond_b5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_fc

    .line 131
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v1}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmUidObserverToken(Lcom/android/server/audio/MusicFxHelper;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v3}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmPackageName(Lcom/android/server/audio/MusicFxHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, p1}, Landroid/app/IActivityManager;->addUidToObserver(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " add to observer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_e7} :catch_b3

    goto :goto_fc

    .line 136
    :goto_e8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException with UID observer add/register: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_fc
    :goto_fc
    invoke-super {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic put(ILjava/lang/Object;)V
    .registers 3

    .line 94
    check-cast p2, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->put(ILcom/android/server/audio/MusicFxHelper$PackageSessions;)V

    return-void
.end method

.method public remove(I)V
    .registers 6

    .line 144
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AS.MusicFxHelper"

    if-eqz v0, :cond_31

    .line 146
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v2}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmUidObserverToken(Lcom/android/server/audio/MusicFxHelper;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v3}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmPackageName(Lcom/android/server/audio/MusicFxHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p1}, Landroid/app/IActivityManager;->removeUidFromObserver(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_1c

    goto :goto_31

    :catch_1c
    move-exception v0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException with removeUidFromObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_31
    :goto_31
    invoke-super {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 156
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_86

    .line 158
    :try_start_3a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v0}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmEffectUidObserver(Lcom/android/server/audio/MusicFxHelper;)Landroid/app/IUidObserver;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_47} :catch_48

    goto :goto_5d

    :catch_48
    move-exception p1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException with unregisterUidObserver: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_5d
    iget-object p1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fputmUidObserverToken(Lcom/android/server/audio/MusicFxHelper;Landroid/os/IBinder;)V

    .line 163
    iget-object p1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {p1}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmIsBound(Lcom/android/server/audio/MusicFxHelper;)Z

    move-result p1

    if-eqz p1, :cond_86

    .line 164
    iget-object p1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {p1}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmContext(Lcom/android/server/audio/MusicFxHelper;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {v0}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmMusicFxBindConnection(Lcom/android/server/audio/MusicFxHelper;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 165
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fputmIsBound(Lcom/android/server/audio/MusicFxHelper;Z)V

    .line 166
    const-string/jumbo p0, "last session closed, unregister UID observer, and unbind com.android.musicfx"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    return-void
.end method
