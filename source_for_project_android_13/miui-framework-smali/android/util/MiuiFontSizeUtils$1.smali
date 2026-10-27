.class Landroid/util/MiuiFontSizeUtils$1;
.super Ljava/lang/Object;
.source "MiuiFontSizeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/MiuiFontSizeUtils;->clearForcedDisplayDensity(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$displayId:I

.field final synthetic blacklist val$userHandle:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3

    .line 109
    iput p1, p0, Landroid/util/MiuiFontSizeUtils$1;->val$displayId:I

    iput p2, p0, Landroid/util/MiuiFontSizeUtils$1;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 113
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 114
    .local v0, "wm":Landroid/view/IWindowManager;
    iget v1, p0, Landroid/util/MiuiFontSizeUtils$1;->val$displayId:I

    iget v2, p0, Landroid/util/MiuiFontSizeUtils$1;->val$userHandle:I

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .end local v0    # "wm":Landroid/view/IWindowManager;
    goto :goto_1b

    .line 117
    :catch_c
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_11
    move-exception v0

    .line 116
    .local v0, "exc":Landroid/os/RemoteException;
    invoke-static {}, Landroid/util/MiuiFontSizeUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to clear forced display density setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "exc":Landroid/os/RemoteException;
    :goto_1b
    nop

    .line 120
    :goto_1c
    return-void
.end method
