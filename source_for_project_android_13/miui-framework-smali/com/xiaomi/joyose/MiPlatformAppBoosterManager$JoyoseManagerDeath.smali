.class Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;
.super Ljava/lang/Object;
.source "MiPlatformAppBoosterManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JoyoseManagerDeath"
.end annotation


# instance fields
.field private blacklist mToken:Lcom/xiaomi/joyose/IJoyoseInterface;


# direct methods
.method constructor blacklist <init>(Lcom/xiaomi/joyose/IJoyoseInterface;)V
    .registers 2
    .param p1, "token"    # Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;->mToken:Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 26
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->-$$Nest$sfputjs(Lcom/xiaomi/joyose/IJoyoseInterface;)V

    .line 30
    iget-object v0, p0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;->mToken:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_10

    .line 31
    invoke-interface {v0}, Lcom/xiaomi/joyose/IJoyoseInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 33
    :cond_10
    return-void
.end method
