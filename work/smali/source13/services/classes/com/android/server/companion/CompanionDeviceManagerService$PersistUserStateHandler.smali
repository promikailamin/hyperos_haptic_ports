.class Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;
.super Landroid/os/Handler;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersistUserStateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 2

    .line 1109
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 1110
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1111
    return-void
.end method


# virtual methods
.method declared-synchronized clearMessages()V
    .registers 2

    monitor-enter p0

    .line 1126
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1127
    monitor-exit p0

    return-void

    .line 1125
    .end local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1131
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1132
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$mpersistStateForUser(Lcom/android/server/companion/CompanionDeviceManagerService;I)V

    .line 1133
    return-void
.end method

.method declared-synchronized postPersistUserState(I)V
    .registers 3
    .param p1, "userId"    # I

    monitor-enter p0

    .line 1117
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1118
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1120
    .end local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;
    :cond_e
    monitor-exit p0

    return-void

    .line 1116
    .end local p1    # "userId":I
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
