.class Lcom/android/server/pm/PackageInstallerSession$7;
.super Landroid/os/incremental/IStorageHealthListener$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field final synthetic val$systemDataLoader:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 4062
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$systemDataLoader:Z

    invoke-direct {p0}, Landroid/os/incremental/IStorageHealthListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHealthStatus(II)V
    .registers 6
    .param p1, "storageId"    # I
    .param p2, "status"    # I

    .line 4065
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDestroyed(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2c

    .line 4069
    :cond_11
    packed-switch p2, :pswitch_data_2e

    goto :goto_2b

    .line 4074
    :pswitch_15
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$systemDataLoader:Z

    if-eqz v0, :cond_1a

    .line 4076
    goto :goto_2b

    .line 4081
    :cond_1a
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4082
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/16 v1, -0x14

    const-string v2, "Image is missing pages required for installation."

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdispatchSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    goto :goto_2b

    .line 4071
    :pswitch_2a
    nop

    .line 4086
    :goto_2b
    return-void

    .line 4066
    :cond_2c
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_15
        :pswitch_15
        :pswitch_1a
    .end packed-switch
.end method
