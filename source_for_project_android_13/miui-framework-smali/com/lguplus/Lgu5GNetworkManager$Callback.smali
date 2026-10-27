.class public Lcom/lguplus/Lgu5GNetworkManager$Callback;
.super Ljava/lang/Object;
.source "Lgu5GNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/Lgu5GNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist on5GAvailable()V
    .registers 3

    .line 197
    invoke-static {}, Lcom/lguplus/Lgu5GNetworkManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback on5GAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public blacklist on5GBearerAdded()V
    .registers 3

    .line 209
    invoke-static {}, Lcom/lguplus/Lgu5GNetworkManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback on5GBearerAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method public blacklist on5GBearerDeleted()V
    .registers 3

    .line 215
    invoke-static {}, Lcom/lguplus/Lgu5GNetworkManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback on5GBearerDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public blacklist on5GUnavailable()V
    .registers 3

    .line 203
    invoke-static {}, Lcom/lguplus/Lgu5GNetworkManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback on5GUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method
