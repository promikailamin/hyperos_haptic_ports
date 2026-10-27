.class final Lcom/android/server/gpu/GpuService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gpu/GpuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method private constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/gpu/GpuService;Lcom/android/server/gpu/GpuService$PackageReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/gpu/GpuService$PackageReceiver;-><init>(Lcom/android/server/gpu/GpuService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 175
    .local v0, "data":Landroid/net/Uri;
    nop

    .line 179
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v2}, Lcom/android/server/gpu/GpuService;->-$$Nest$fgetmProdDriverPackageName(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 181
    .local v2, "isProdDriver":Z
    iget-object v3, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v3}, Lcom/android/server/gpu/GpuService;->-$$Nest$fgetmDevDriverPackageName(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 182
    .local v3, "isDevDriver":Z
    if-nez v2, :cond_22

    if-nez v3, :cond_22

    .line 183
    return-void

    .line 186
    :cond_22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_66

    :cond_2e
    goto :goto_4c

    :sswitch_2f
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v5, 0x0

    goto :goto_4c

    :sswitch_39
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v5, 0x2

    goto :goto_4c

    :sswitch_43
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v5, 0x1

    :goto_4c
    packed-switch v5, :pswitch_data_74

    goto :goto_64

    .line 190
    :pswitch_50
    if-eqz v2, :cond_5d

    .line 191
    iget-object v4, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v4}, Lcom/android/server/gpu/GpuService;->-$$Nest$mfetchProductionDriverPackageProperties(Lcom/android/server/gpu/GpuService;)V

    .line 192
    iget-object v4, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v4}, Lcom/android/server/gpu/GpuService;->-$$Nest$msetDenylist(Lcom/android/server/gpu/GpuService;)V

    goto :goto_64

    .line 193
    :cond_5d
    if-eqz v3, :cond_64

    .line 194
    iget-object v4, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v4}, Lcom/android/server/gpu/GpuService;->-$$Nest$mfetchPrereleaseDriverPackageProperties(Lcom/android/server/gpu/GpuService;)V

    .line 201
    :cond_64
    :goto_64
    return-void

    nop

    :sswitch_data_66
    .sparse-switch
        0xa480416 -> :sswitch_43
        0x1f50b9c2 -> :sswitch_39
        0x5c1076e2 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_50
        :pswitch_50
        :pswitch_50
    .end packed-switch
.end method
