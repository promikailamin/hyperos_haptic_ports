.class Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
.super Ljava/lang/Object;
.source "WhetstoneManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WhetstoneManagerDeath"
.end annotation


# instance fields
.field private blacklist mToken:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method constructor blacklist <init>(Lcom/miui/whetstone/IWhetstone;)V
    .registers 2
    .param p1, "token"    # Lcom/miui/whetstone/IWhetstone;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;->mToken:Lcom/miui/whetstone/IWhetstone;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/whetstone/WhetstoneManager;->-$$Nest$sfputws(Lcom/miui/whetstone/IWhetstone;)V

    .line 48
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;->mToken:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_10

    .line 49
    invoke-interface {v0}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 51
    :cond_10
    return-void
.end method
