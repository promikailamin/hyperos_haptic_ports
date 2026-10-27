.class Lmiui/app/ToggleManager$21;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ToggleManager;->updateDataToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor blacklist <init>(Lmiui/app/ToggleManager;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/app/ToggleManager;

    .line 1693
    iput-object p1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 1696
    iget-object v0, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$fgetmMobileDataEnable(Lmiui/app/ToggleManager;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$fgetmMobilePolicyEnable(Lmiui/app/ToggleManager;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$fgetmFlightMode(Lmiui/app/ToggleManager;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$fgetmIsSimMissing(Lmiui/app/ToggleManager;)Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    .line 1697
    .local v0, "isDataEnabled":Z
    :goto_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMobileDataEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v4}, Lmiui/app/ToggleManager;->-$$Nest$fgetmMobileDataEnable(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";mMobilePolicyEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v4}, Lmiui/app/ToggleManager;->-$$Nest$fgetmMobilePolicyEnable(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";mFlightMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v4}, Lmiui/app/ToggleManager;->-$$Nest$fgetmFlightMode(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";mIsSimMissing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v4}, Lmiui/app/ToggleManager;->-$$Nest$fgetmIsSimMissing(Lmiui/app/ToggleManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ToggleManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget-object v3, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v3, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1702
    iget-object v3, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v3}, Lmiui/app/ToggleManager;->-$$Nest$fgetmFlightMode(Lmiui/app/ToggleManager;)Z

    move-result v4

    if-nez v4, :cond_88

    iget-object v4, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v4}, Lmiui/app/ToggleManager;->-$$Nest$fgetmIsSimMissing(Lmiui/app/ToggleManager;)Z

    move-result v4

    if-eqz v4, :cond_89

    :cond_88
    move v1, v2

    :cond_89
    invoke-virtual {v3, v2, v1}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1703
    iget-object v1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    .line 1704
    if-eqz v0, :cond_94

    const v3, 0x11080202

    goto :goto_97

    :cond_94
    const v3, 0x11080201

    .line 1703
    :goto_97
    invoke-virtual {v1, v2, v3}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1705
    return-void
.end method
