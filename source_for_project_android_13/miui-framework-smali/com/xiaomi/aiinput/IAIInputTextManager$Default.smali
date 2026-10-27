.class public Lcom/xiaomi/aiinput/IAIInputTextManager$Default;
.super Ljava/lang/Object;
.source "IAIInputTextManager.java"

# interfaces
.implements Lcom/xiaomi/aiinput/IAIInputTextManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiinput/IAIInputTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addClient(Lcom/xiaomi/aiinput/IAIInputTextManagerClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "client"    # Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
    .param p2, "ctx"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAIInputTextClient()Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method
