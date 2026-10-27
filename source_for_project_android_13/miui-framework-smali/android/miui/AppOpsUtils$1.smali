.class Landroid/miui/AppOpsUtils$1;
.super Landroid/os/AsyncTask;
.source "AppOpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/miui/AppOpsUtils;->setMode(Landroid/content/Context;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$mode:I

.field final synthetic blacklist val$packageName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 101
    iput p1, p0, Landroid/miui/AppOpsUtils$1;->val$mode:I

    iput-object p2, p0, Landroid/miui/AppOpsUtils$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/miui/AppOpsUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/miui/AppOpsUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x1

    .line 107
    .local v1, "action":I
    iget v2, p0, Landroid/miui/AppOpsUtils$1;->val$mode:I

    packed-switch v2, :pswitch_data_4e

    :pswitch_b
    goto :goto_12

    .line 112
    :pswitch_c
    const/4 v1, 0x2

    .line 113
    goto :goto_12

    .line 116
    :pswitch_e
    const/4 v1, 0x1

    .line 117
    goto :goto_12

    .line 109
    :pswitch_10
    const/4 v1, 0x3

    .line 110
    nop

    .line 122
    :goto_12
    const-wide/32 v2, 0x8000

    const-string v4, "extra_permission"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 123
    const-string v2, "extra_action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Landroid/miui/AppOpsUtils$1;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "extra_package"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    const-string v2, "extra_flags"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const/4 v2, 0x0

    :try_start_32
    iget-object v3, p0, Landroid/miui/AppOpsUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/miui/AppOpsUtils;->-$$Nest$sfgetCONTENT_URI()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_44} :catch_45

    .line 130
    goto :goto_4d

    .line 128
    :catch_45
    move-exception v3

    .line 129
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AppOpsUtils"

    const-string v5, "SET_APPLICATION_PERMISSION : "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4d
    return-object v2

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
