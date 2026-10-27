.class public final Lcom/android/server/om/IdmapDaemon$Connection;
.super Ljava/lang/Object;
.source "IdmapDaemon.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mIdmap2:Landroid/os/IIdmap2;

.field public mOpened:Z

.field public final synthetic this$0:Lcom/android/server/om/IdmapDaemon;


# direct methods
.method public static synthetic $r8$lambda$rOBH-D7dR5i5A5y99m9wut-LaKQ(Lcom/android/server/om/IdmapDaemon$Connection;Landroid/os/IIdmap2;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/om/IdmapDaemon$Connection;->lambda$close$0(Landroid/os/IIdmap2;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/IdmapDaemon;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V
    .registers 4

    .line 89
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 90
    iput-object p2, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 91
    invoke-static {p1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 92
    :try_start_f
    invoke-static {p1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fputmOpenedCount(Lcom/android/server/om/IdmapDaemon;I)V

    .line 93
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/IdmapDaemon-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 7

    .line 98
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v0}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 99
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    if-nez v1, :cond_f

    .line 100
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_3d

    :cond_f
    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 104
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fputmOpenedCount(Lcom/android/server/om/IdmapDaemon;I)V

    if-eqz v2, :cond_21

    .line 107
    monitor-exit v0

    return-void

    .line 110
    :cond_21
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmService(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;

    move-result-object v1

    .line 111
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/IdmapDaemon$Connection;Landroid/os/IIdmap2;)V

    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {p0}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object p0

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 123
    monitor-exit v0

    return-void

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_d

    throw p0
.end method

.method public getIdmap2()Landroid/os/IIdmap2;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    return-object p0
.end method

.method public final synthetic lambda$close$0(Landroid/os/IIdmap2;)V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v0}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 115
    :try_start_7
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmService(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;

    move-result-object v1

    if-ne v1, p1, :cond_25

    iget-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {p1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)I

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_25

    .line 119
    :cond_18
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$smstopIdmapServiceLocked()V

    .line 120
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fputmService(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V

    .line 121
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    goto :goto_27

    .line 116
    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    .line 121
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_23

    throw p0
.end method
