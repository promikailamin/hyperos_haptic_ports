.class public Lcom/android/server/lineage/common/UserContentObserver$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "UserContentObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/common/UserContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/common/UserContentObserver;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/android/server/lineage/common/UserContentObserver$1;->this$0:Lcom/android/server/lineage/common/UserContentObserver;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onForegroundProfileSwitch(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onLockedBootComplete(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 2

    .line 44
    iget-object p1, p0, Lcom/android/server/lineage/common/UserContentObserver$1;->this$0:Lcom/android/server/lineage/common/UserContentObserver;

    invoke-static {p1}, Lcom/android/server/lineage/common/UserContentObserver;->-$$Nest$fgetmHandler(Lcom/android/server/lineage/common/UserContentObserver;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/lineage/common/UserContentObserver$1;->this$0:Lcom/android/server/lineage/common/UserContentObserver;

    invoke-static {p0}, Lcom/android/server/lineage/common/UserContentObserver;->-$$Nest$fgetmUpdateRunnable(Lcom/android/server/lineage/common/UserContentObserver;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 3

    .line 0
    return-void
.end method
