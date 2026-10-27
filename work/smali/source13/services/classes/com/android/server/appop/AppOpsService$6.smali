.class Lcom/android/server/appop/AppOpsService$6;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;

    .line 2012
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$6;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageTrustedToInstallApps(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2015
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$6;->this$0:Lcom/android/server/appop/AppOpsService;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 2017
    .local v0, "appOpMode":I
    packed-switch v0, :pswitch_data_12

    .line 2023
    :pswitch_b
    const/4 v1, 0x2

    return v1

    .line 2021
    :pswitch_d
    const/4 v1, 0x1

    return v1

    .line 2019
    :pswitch_f
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method
