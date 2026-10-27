.class Landroid/util/MiuiFontSizeUtils$2;
.super Ljava/lang/Object;
.source "MiuiFontSizeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/MiuiFontSizeUtils;->setForcedDisplayDensity(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$density:I

.field final synthetic blacklist val$displayId:I

.field final synthetic blacklist val$userHandle:I


# direct methods
.method constructor blacklist <init>(III)V
    .registers 4

    .line 125
    iput p1, p0, Landroid/util/MiuiFontSizeUtils$2;->val$displayId:I

    iput p2, p0, Landroid/util/MiuiFontSizeUtils$2;->val$density:I

    iput p3, p0, Landroid/util/MiuiFontSizeUtils$2;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 129
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 130
    .local v0, "wm":Landroid/view/IWindowManager;
    iget v1, p0, Landroid/util/MiuiFontSizeUtils$2;->val$displayId:I

    iget v2, p0, Landroid/util/MiuiFontSizeUtils$2;->val$density:I

    iget v3, p0, Landroid/util/MiuiFontSizeUtils$2;->val$userHandle:I

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .end local v0    # "wm":Landroid/view/IWindowManager;
    goto :goto_1d

    .line 133
    :catch_e
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v0

    .line 132
    .local v0, "exc":Landroid/os/RemoteException;
    invoke-static {}, Landroid/util/MiuiFontSizeUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to save forced display density setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0    # "exc":Landroid/os/RemoteException;
    :goto_1d
    nop

    .line 136
    :goto_1e
    return-void
.end method
