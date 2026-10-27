.class public Lcom/android/server/am/ActiveServices$ServiceAnrTimer;
.super Lcom/android/server/utils/AnrTimer;
.source "ActiveServices.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V
    .registers 6

    .line 8028
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/utils/AnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    return-void
.end method


# virtual methods
.method public getPid(Lcom/android/server/am/ServiceRecord;)I
    .registers 2

    .line 8033
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getPid(Ljava/lang/Object;)I
    .registers 2

    .line 8020
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices$ServiceAnrTimer;->getPid(Lcom/android/server/am/ServiceRecord;)I

    move-result p0

    return p0
.end method

.method public getUid(Lcom/android/server/am/ServiceRecord;)I
    .registers 2

    .line 8038
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_7

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getUid(Ljava/lang/Object;)I
    .registers 2

    .line 8020
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices$ServiceAnrTimer;->getUid(Lcom/android/server/am/ServiceRecord;)I

    move-result p0

    return p0
.end method
