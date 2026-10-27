.class Landroid/accounts/ChooseAccountTypeActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountTypeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/ChooseAccountTypeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/ChooseAccountTypeActivity;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/ChooseAccountTypeActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Landroid/accounts/ChooseAccountTypeActivity$1;->this$0:Landroid/accounts/ChooseAccountTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 114
    iget-object p1, p0, Landroid/accounts/ChooseAccountTypeActivity$1;->this$0:Landroid/accounts/ChooseAccountTypeActivity;

    iget-object p2, p0, Landroid/accounts/ChooseAccountTypeActivity$1;->this$0:Landroid/accounts/ChooseAccountTypeActivity;

    invoke-static {p2}, Landroid/accounts/ChooseAccountTypeActivity;->-$$Nest$fgetmAuthenticatorInfosToDisplay(Landroid/accounts/ChooseAccountTypeActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    iget-object p2, p2, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object p2, p2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/accounts/ChooseAccountTypeActivity;->-$$Nest$msetResultAndFinish(Landroid/accounts/ChooseAccountTypeActivity;Ljava/lang/String;)V

    .line 115
    return-void
.end method
