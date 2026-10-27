.class public Lcom/miui/autoui/MiuiAutoUIManager;
.super Ljava/lang/Object;
.source "MiuiAutoUIManager.java"


# static fields
.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/miui/autoui/IMiuiAutoUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIManager$1;

    invoke-direct {v0}, Lcom/miui/autoui/MiuiAutoUIManager$1;-><init>()V

    sput-object v0, Lcom/miui/autoui/MiuiAutoUIManager;->sInstance:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static blacklist getAutoUIApps()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/miui/autoui/MiuiAutoUIManager;->getDefault()Lcom/miui/autoui/IMiuiAutoUI;

    move-result-object v0

    if-nez v0, :cond_8

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_8
    invoke-static {}, Lcom/miui/autoui/MiuiAutoUIManager;->getDefault()Lcom/miui/autoui/IMiuiAutoUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/IMiuiAutoUI;->getAutoUIApps()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefault()Lcom/miui/autoui/IMiuiAutoUI;
    .registers 1

    .line 25
    sget-object v0, Lcom/miui/autoui/MiuiAutoUIManager;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autoui/IMiuiAutoUI;

    return-object v0
.end method

.method public static blacklist getSystemAutoUIRules(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/miui/autoui/MiuiAutoUIManager;->getDefault()Lcom/miui/autoui/IMiuiAutoUI;

    move-result-object v0

    if-nez v0, :cond_8

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_8
    invoke-static {}, Lcom/miui/autoui/MiuiAutoUIManager;->getDefault()Lcom/miui/autoui/IMiuiAutoUI;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/miui/autoui/IMiuiAutoUI;->getSystemAutoUIRules(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setAutoUIAppEnable(Ljava/lang/String;ZZZ)Z
    .registers 5
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "enable"    # Z
    .param p2, "write"    # Z
    .param p3, "kill"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/miui/autoui/MiuiAutoUIManager;->getDefault()Lcom/miui/autoui/IMiuiAutoUI;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 62
    :cond_d
    invoke-static {}, Lcom/miui/autoui/MiuiAutoUIManager;->getDefault()Lcom/miui/autoui/IMiuiAutoUI;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/miui/autoui/IMiuiAutoUI;->setAutoUIAppEnable(Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    .line 60
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method
