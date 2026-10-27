.class final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;
.super Ljava/lang/Object;
.source "TvInteractiveAppManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientState"
.end annotation


# instance fields
.field private mClientToken:Landroid/os/IBinder;

.field private final mSessionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V
    .registers 4
    .param p2, "clientToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 1804
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1799
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 1805
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    .line 1806
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    .line 1807
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 8

    .line 1815
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1816
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v1

    .line 1819
    .local v1, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    .line 1820
    .local v2, "clientState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;
    if-eqz v2, :cond_6a

    .line 1821
    :goto_1d
    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6a

    .line 1822
    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1823
    .local v3, "sessionToken":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mUserId:I

    invoke-static {v4, v3, v5, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 1828
    iget-object v4, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1829
    const-string v4, "TvInteractiveAppManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove sessionToken "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget-object v4, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1833
    .end local v3    # "sessionToken":Landroid/os/IBinder;
    :cond_69
    goto :goto_1d

    .line 1835
    :cond_6a
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mClientToken:Landroid/os/IBinder;

    .line 1836
    .end local v1    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .end local v2    # "clientState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;
    monitor-exit v0

    .line 1837
    return-void

    .line 1836
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_7 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1810
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
