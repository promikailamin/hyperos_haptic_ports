.class Landroid/app/ReceiverReporter$ReceiverObj;
.super Ljava/lang/Object;
.source "ReceiverReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ReceiverReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverObj"
.end annotation


# instance fields
.field private blacklist action:Ljava/lang/String;

.field private blacklist packageName:Ljava/lang/String;

.field private blacklist receiver:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "receiver"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 51
    instance-of v0, p1, Landroid/app/ReceiverReporter$ReceiverObj;

    if-eqz v0, :cond_29

    .line 52
    move-object v0, p1

    check-cast v0, Landroid/app/ReceiverReporter$ReceiverObj;

    .line 54
    .local v0, "receiverObj":Landroid/app/ReceiverReporter$ReceiverObj;
    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 54
    :goto_28
    return v1

    .line 58
    .end local v0    # "receiverObj":Landroid/app/ReceiverReporter$ReceiverObj;
    :cond_29
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
