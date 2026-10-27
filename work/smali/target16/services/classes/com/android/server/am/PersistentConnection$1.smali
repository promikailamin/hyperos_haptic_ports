.class public Lcom/android/server/am/PersistentConnection$1;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/PersistentConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PersistentConnection;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    .line 161
    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p1}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmLock(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 162
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmBound(Lcom/android/server/am/PersistentConnection;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 164
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmTag(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmComponentName(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmUserId(Lcom/android/server/am/PersistentConnection;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but not bound, ignore."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    monitor-exit p1

    return-void

    :catchall_48
    move-exception p0

    goto :goto_93

    .line 169
    :cond_4a
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmTag(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmComponentName(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmUserId(Lcom/android/server/am/PersistentConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmNumBindingDied(Lcom/android/server/am/PersistentConnection;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fputmNumBindingDied(Lcom/android/server/am/PersistentConnection;I)V

    .line 174
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v0}, Lcom/android/server/am/PersistentConnection;->scheduleRebindLocked()V

    .line 175
    monitor-exit p1
    :try_end_8d
    .catchall {:try_start_7 .. :try_end_8d} :catchall_48

    .line 176
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->onDisconnected()V

    return-void

    .line 175
    :goto_93
    :try_start_93
    monitor-exit p1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_48

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 119
    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p1}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmLock(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 120
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmBound(Lcom/android/server/am/PersistentConnection;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 124
    iget-object p2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmTag(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmComponentName(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmUserId(Lcom/android/server/am/PersistentConnection;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but not bound, ignore."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit p1

    return-void

    :catchall_48
    move-exception p0

    goto :goto_ae

    .line 128
    :cond_4a
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmTag(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmComponentName(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmUserId(Lcom/android/server/am/PersistentConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmNumConnected(Lcom/android/server/am/PersistentConnection;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fputmNumConnected(Lcom/android/server/am/PersistentConnection;I)V

    .line 133
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0, v2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fputmIsConnected(Lcom/android/server/am/PersistentConnection;Z)V

    .line 134
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fputmLastConnectedTime(Lcom/android/server/am/PersistentConnection;J)V

    .line 135
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v0, p2}, Lcom/android/server/am/PersistentConnection;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fputmService(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)V

    .line 137
    iget-object p2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$mscheduleStableCheckLocked(Lcom/android/server/am/PersistentConnection;)V

    .line 138
    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_7 .. :try_end_a4} :catchall_48

    .line 139
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmService(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/PersistentConnection;->onConnected(Ljava/lang/Object;)V

    return-void

    .line 138
    :goto_ae
    :try_start_ae
    monitor-exit p1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_48

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 144
    iget-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {p1}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmLock(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 145
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmTag(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmComponentName(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v2}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmUserId(Lcom/android/server/am/PersistentConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fgetmNumDisconnected(Lcom/android/server/am/PersistentConnection;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/PersistentConnection;->-$$Nest$fputmNumDisconnected(Lcom/android/server/am/PersistentConnection;I)V

    .line 150
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->-$$Nest$mcleanUpConnectionLocked(Lcom/android/server/am/PersistentConnection;)V

    .line 154
    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_50

    .line 155
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->onDisconnected()V

    return-void

    :catchall_50
    move-exception p0

    .line 154
    :try_start_51
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p0
.end method
