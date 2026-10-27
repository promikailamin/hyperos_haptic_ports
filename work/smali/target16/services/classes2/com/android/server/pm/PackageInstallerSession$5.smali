.class public Lcom/android/server/pm/PackageInstallerSession$5;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    .line 977
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 14

    .line 980
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_76

    goto/16 :goto_74

    .line 1017
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1018
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleVerificationUserResponse(Lcom/android/server/pm/PackageInstallerSession;I)V

    goto :goto_74

    .line 1014
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleOnNativeLibsExtracted(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_74

    .line 1011
    :pswitch_16
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandlePreapprovalRequest(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_74

    .line 1006
    :pswitch_1c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1007
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1008
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$monSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    goto :goto_74

    .line 991
    :pswitch_28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 992
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 993
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 994
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 995
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/content/IntentSender;

    .line 996
    iget v8, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 997
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v0, v1, :cond_48

    move v9, v1

    goto :goto_4a

    :cond_48
    const/4 v0, 0x0

    move v9, v0

    .line 998
    :goto_4a
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1000
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 1001
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$misInstallerDeviceOwnerOrAffiliatedProfileOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v5

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 1000
    invoke-static/range {v2 .. v11}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_74

    .line 988
    :pswitch_63
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleInstall(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_74

    .line 985
    :pswitch_69
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleStreamValidateAndCommit(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_74

    .line 982
    :pswitch_6f
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mhandleSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V

    :goto_74
    return v1

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_69
        :pswitch_63
        :pswitch_28
        :pswitch_1c
        :pswitch_16
        :pswitch_10
        :pswitch_8
    .end packed-switch
.end method
