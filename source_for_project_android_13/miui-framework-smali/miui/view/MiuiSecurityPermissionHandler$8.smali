.class Lmiui/view/MiuiSecurityPermissionHandler$8;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic blacklist val$account:Landroid/accounts/Account;


# direct methods
.method constructor blacklist <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/accounts/Account;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/view/MiuiSecurityPermissionHandler;

    .line 630
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 634
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_7a

    .line 635
    const/16 v0, 0xa

    .line 636
    .local v0, "time":I
    :goto_3
    const/4 v1, -0x2

    if-lez v0, :cond_31

    .line 637
    :try_start_6
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->val$account:Landroid/accounts/Account;

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_10

    :cond_e
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_10
    invoke-static {v2, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$mpostVerificationWaterMarker(Lmiui/view/MiuiSecurityPermissionHandler;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fputmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;I)V

    .line 638
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    if-eq v1, v2, :cond_20

    .line 639
    goto :goto_31

    .line 641
    :cond_20
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " updateWaterMarkerAccount postVerificationWaterMarker NETWORK_ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 643
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 648
    :cond_31
    :goto_31
    invoke-static {}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateWaterMarkerAccount! mRetWater:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v4}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v2

    if-eq v1, v2, :cond_6c

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmRetWater(Lmiui/view/MiuiSecurityPermissionHandler;)I

    move-result v1

    if-nez v1, :cond_62

    goto :goto_6c

    .line 653
    :cond_62
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onHideWaterMarker()V

    goto :goto_75

    .line 651
    :cond_6c
    :goto_6c
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$8;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-$$Nest$fgetmPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onShowWaterMarker()V

    .line 655
    .end local v0    # "time":I
    :goto_75
    monitor-exit p0

    .line 658
    goto :goto_7e

    .line 655
    :catchall_77
    move-exception v0

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_6 .. :try_end_79} :catchall_77

    .end local p0    # "this":Lmiui/view/MiuiSecurityPermissionHandler$8;
    :try_start_79
    throw v0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7a} :catch_7a

    .line 656
    .restart local p0    # "this":Lmiui/view/MiuiSecurityPermissionHandler$8;
    :catch_7a
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 659
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7e
    return-void
.end method
