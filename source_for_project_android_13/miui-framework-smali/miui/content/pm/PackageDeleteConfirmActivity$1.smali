.class Lmiui/content/pm/PackageDeleteConfirmActivity$1;
.super Landroid/os/Handler;
.source "PackageDeleteConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/PackageDeleteConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;


# direct methods
.method constructor blacklist <init>(Lmiui/content/pm/PackageDeleteConfirmActivity;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/content/pm/PackageDeleteConfirmActivity;

    .line 149
    iput-object p1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 151
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmAutoNextStepTime(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fputmAutoNextStepTime(Lmiui/content/pm/PackageDeleteConfirmActivity;I)V

    .line 152
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmCurrentStep(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmAutoNextStepTime(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-nez v0, :cond_33

    .line 153
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmDeleteButton(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x110f008a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 154
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmDeleteButton(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_ad

    .line 156
    :cond_33
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmAutoNextStepTime(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-nez v0, :cond_51

    .line 158
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmDeleteButton(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x110f008c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 159
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmDeleteButton(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_ad

    .line 161
    :cond_51
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmCurrentStep(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_79

    .line 162
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmDeleteButton(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    const v4, 0x110f008b

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmAutoNextStepTime(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v5

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 162
    invoke-virtual {v1, v4, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_97

    .line 165
    :cond_79
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmDeleteButton(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    const v4, 0x110f008d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmAutoNextStepTime(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v5

    .line 166
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 165
    invoke-virtual {v1, v4, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :goto_97
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmHandler(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-$$Nest$fgetmHandler(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    :goto_ad
    return-void
.end method
