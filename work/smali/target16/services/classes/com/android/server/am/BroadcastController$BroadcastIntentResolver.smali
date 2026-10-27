.class public final Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "BroadcastController.java"


# direct methods
.method public static synthetic $r8$lambda$3P2ECEgoMTD6pyNY8_msI6SA-8k([Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z
    .registers 2

    .line 257
    iget-object p1, p1, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastController;)V
    .registers 2

    .line 211
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z
    .registers 5

    .line 215
    iget-object p0, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {p0}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 216
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_e
    if-ltz p1, :cond_25

    .line 217
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    iget-object v1, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p0, :cond_22

    const/4 p0, 0x0

    return p0

    :cond_22
    add-int/lit8 p1, p1, -0x1

    goto :goto_e

    :cond_25
    return v0
.end method

.method public bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3

    .line 211
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;->allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public getIntentFilter(Lcom/android/server/am/BroadcastFilter;)Landroid/content/IntentFilter;
    .registers 2

    .line 0
    return-object p1
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 211
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;->getIntentFilter(Lcom/android/server/am/BroadcastFilter;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z
    .registers 3

    .line 246
    iget-object p0, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 211
    check-cast p2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z

    move-result p0

    return p0
.end method

.method public newArray(I)[Lcom/android/server/am/BroadcastFilter;
    .registers 2

    .line 241
    new-array p0, p1, [Lcom/android/server/am/BroadcastFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;->newArray(I)[Lcom/android/server/am/BroadcastFilter;

    move-result-object p0

    return-object p0
.end method

.method public newResult(Lcom/android/server/pm/Computer;Lcom/android/server/am/BroadcastFilter;IIJ)Lcom/android/server/am/BroadcastFilter;
    .registers 14

    const/4 v0, -0x1

    if-eq p4, v0, :cond_9

    .line 227
    iget v1, p2, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    if-eq v1, v0, :cond_9

    if-ne p4, v1, :cond_10

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    return-object p0

    .line 229
    :goto_12
    invoke-super/range {v0 .. v6}, Lcom/android/server/IntentResolver;->newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    return-object p0
.end method

.method public bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 7

    .line 211
    check-cast p2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;->newResult(Lcom/android/server/pm/Computer;Lcom/android/server/am/BroadcastFilter;IIJ)Lcom/android/server/am/BroadcastFilter;

    move-result-object p0

    return-object p0
.end method

.method public queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI[Ljava/lang/String;)Ljava/util/List;
    .registers 7

    .line 252
    invoke-super/range {p0 .. p5}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    if-eqz p6, :cond_e

    .line 257
    new-instance p1, Lcom/android/server/am/BroadcastController$BroadcastIntentResolver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p6}, Lcom/android/server/am/BroadcastController$BroadcastIntentResolver$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_e
    return-object p0
.end method
