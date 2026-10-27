.class Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;
.super Ljava/lang/Object;
.source "JoyoseManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/JoyoseManager;
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;->mToken:Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/joyose/JoyoseManager;->-$$Nest$sfputjs(Lcom/xiaomi/joyose/IJoyoseInterface;)V

    .line 24
    iget-object v0, p0, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;->mToken:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_10

    .line 25
    invoke-interface {v0}, Lcom/xiaomi/joyose/IJoyoseInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 27
    :cond_10
    return-void
.end method
