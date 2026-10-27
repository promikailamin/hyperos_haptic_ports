.class Lmiui/content/pm/PreloadedAppPolicy$1$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PreloadedAppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/content/pm/PreloadedAppPolicy$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/content/pm/PreloadedAppPolicy$1;

.field final synthetic blacklist val$conn:Landroid/content/ServiceConnection;


# direct methods
.method constructor blacklist <init>(Lmiui/content/pm/PreloadedAppPolicy$1;Landroid/content/ServiceConnection;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/content/pm/PreloadedAppPolicy$1;

    .line 169
    iput-object p1, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->this$0:Lmiui/content/pm/PreloadedAppPolicy$1;

    iput-object p2, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->this$0:Lmiui/content/pm/PreloadedAppPolicy$1;

    iget-object v0, v0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 173
    iget-object v0, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->this$0:Lmiui/content/pm/PreloadedAppPolicy$1;

    iget-object v0, v0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v0, :cond_16

    .line 174
    iget-object v0, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->this$0:Lmiui/content/pm/PreloadedAppPolicy$1;

    iget-object v0, v0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 176
    :cond_16
    return-void
.end method

.method public blacklist onUserActionRequired(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 180
    return-void
.end method
