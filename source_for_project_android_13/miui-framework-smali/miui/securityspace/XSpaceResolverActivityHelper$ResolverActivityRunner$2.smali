.class Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;


# direct methods
.method constructor blacklist <init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    .line 139
    iput-object p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 142
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x110a0014

    if-ne v1, v2, :cond_d

    .line 143
    const/4 v1, 0x0

    goto :goto_f

    .line 144
    :cond_d
    const/16 v1, 0x3e7

    :goto_f
    invoke-static {v0, v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-$$Nest$fputmAimUserId(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)V

    .line 145
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-$$Nest$fgetmAlwaysOption(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-$$Nest$fgetmAlwaysOption(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 146
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v2, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x2

    :goto_31
    invoke-static {v0, v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-$$Nest$fputmAskType(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)V

    .line 147
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-$$Nest$fgetmContext(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-$$Nest$fgetmKeyType(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v2}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-$$Nest$fgetmAskType(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$XSpace;->setAskType(Landroid/content/Context;Ljava/lang/String;I)V

    .line 149
    :cond_49
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-$$Nest$fgetmAimUserId(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)I

    move-result v1

    invoke-static {v0, v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-$$Nest$mforward(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)V

    .line 150
    return-void
.end method
