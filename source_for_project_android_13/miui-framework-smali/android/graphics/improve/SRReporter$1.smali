.class Landroid/graphics/improve/SRReporter$1;
.super Landroid/os/AsyncTask;
.source "SRReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
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
.field final synthetic blacklist val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor blacklist <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 32
    iput-object p1, p0, Landroid/graphics/improve/SRReporter$1;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 32
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/graphics/improve/SRReporter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Void;

    .line 35
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/improve/SRReporter$1;->val$jsonObject:Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "superResolution"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
