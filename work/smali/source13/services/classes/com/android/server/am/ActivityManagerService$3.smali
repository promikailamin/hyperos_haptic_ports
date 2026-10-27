.class Lcom/android/server/am/ActivityManagerService$3;
.super Lcom/android/server/IntentResolver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Lcom/android/server/am/BroadcastFilter;",
        "Lcom/android/server/am/BroadcastFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 1108
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z
    .registers 7
    .param p1, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastFilter;",
            "Ljava/util/List<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;)Z"
        }
    .end annotation

    .line 1112
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    iget-object v0, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v0}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1113
    .local v0, "target":Landroid/os/IBinder;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_25

    .line 1114
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastFilter;

    iget-object v3, v3, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v3}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_22

    .line 1115
    const/4 v2, 0x0

    return v2

    .line 1113
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1118
    .end local v1    # "i":I
    :cond_25
    return v2
.end method

.method protected bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3

    .line 1108
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$3;->allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected getIntentFilter(Lcom/android/server/am/BroadcastFilter;)Landroid/content/IntentFilter;
    .registers 2
    .param p1, "input"    # Lcom/android/server/am/BroadcastFilter;

    .line 1133
    return-object p1
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 1108
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$3;->getIntentFilter(Lcom/android/server/am/BroadcastFilter;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;

    .line 1143
    iget-object v0, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 1108
    check-cast p2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$3;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Lcom/android/server/am/BroadcastFilter;
    .registers 3
    .param p1, "size"    # I

    .line 1138
    new-array v0, p1, [Lcom/android/server/am/BroadcastFilter;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1108
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$3;->newArray(I)[Lcom/android/server/am/BroadcastFilter;

    move-result-object p1

    return-object p1
.end method

.method protected newResult(Lcom/android/server/pm/Computer;Lcom/android/server/am/BroadcastFilter;IIJ)Lcom/android/server/am/BroadcastFilter;
    .registers 9
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p3, "match"    # I
    .param p4, "userId"    # I
    .param p5, "customFlags"    # J

    .line 1124
    const/4 v0, -0x1

    if-eq p4, v0, :cond_e

    iget v1, p2, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    if-eq v1, v0, :cond_e

    iget v0, p2, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    if-ne p4, v0, :cond_c

    goto :goto_e

    .line 1128
    :cond_c
    const/4 v0, 0x0

    return-object v0

    .line 1126
    :cond_e
    :goto_e
    invoke-super/range {p0 .. p6}, Lcom/android/server/IntentResolver;->newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    return-object v0
.end method

.method protected bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 14

    .line 1108
    move-object v2, p2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService$3;->newResult(Lcom/android/server/pm/Computer;Lcom/android/server/am/BroadcastFilter;IIJ)Lcom/android/server/am/BroadcastFilter;

    move-result-object p1

    return-object p1
.end method
