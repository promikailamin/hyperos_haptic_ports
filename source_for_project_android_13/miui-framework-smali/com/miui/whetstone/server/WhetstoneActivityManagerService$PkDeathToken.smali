.class Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PkDeathToken;
.super Ljava/lang/Object;
.source "WhetstoneActivityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkDeathToken"
.end annotation


# instance fields
.field private blacklist mToken:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method public constructor blacklist <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "token"    # Landroid/os/IBinder;

    .line 482
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PkDeathToken;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PkDeathToken;->mToken:Landroid/os/IBinder;

    .line 484
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PkDeathToken;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_8

    .line 489
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 491
    :cond_8
    const-string v0, "whetstone.activity"

    const-string v1, "powerkeeper has died and doRestoreSockForUid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PkDeathToken;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const-string v1, "fw_frozen"

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->doRestoreSockForUid(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PkDeathToken;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const-string v1, "fw_doze"

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->doRestoreSockForUid(Ljava/lang/String;)V

    .line 494
    return-void
.end method
