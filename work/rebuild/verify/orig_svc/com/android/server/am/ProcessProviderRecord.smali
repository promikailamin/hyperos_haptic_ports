.class public final Lcom/android/server/am/ProcessProviderRecord;
.super Lcom/android/server/am/psc/ProcessProviderRecordInternal;
.source "ProcessProviderRecord.java"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public final mConProviders:Ljava/util/ArrayList;

.field public final mPubProviders:Landroid/util/ArrayMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 93
    invoke-direct {p0}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;-><init>()V

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    .line 94
    iput-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 95
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public addProviderConnection(Lcom/android/server/am/ContentProviderConnection;)V
    .registers 2

    .line 86
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 9

    .line 147
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->getLastProviderTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    .line 148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastProviderTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->getLastProviderTime()J

    move-result-wide v0

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 150
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 152
    :cond_1d
    iget-object p3, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const-string p4, "  - "

    const/4 v0, 0x0

    if-lez p3, :cond_5e

    .line 153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Published Providers:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    iget-object p3, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    move v1, v0

    :goto_37
    if-ge v1, p3, :cond_5e

    .line 155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    -> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 159
    :cond_5e
    iget-object p3, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_8e

    .line 160
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Connected Providers:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object p3, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_74
    if-ge v0, p3, :cond_8e

    .line 162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_8e
    return-void
.end method

.method public ensureProviderCapacity(I)V
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    return-void
.end method

.method public getProvider(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    return-object p0
.end method

.method public getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    return-object p0
.end method

.method public bridge synthetic getProviderAt(I)Lcom/android/server/am/psc/ContentProviderRecordInternal;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p0

    return-object p0
.end method

.method public getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;
    .registers 2

    .line 82
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ContentProviderConnection;

    return-object p0
.end method

.method public bridge synthetic getProviderConnectionAt(I)Lcom/android/server/am/psc/ContentProviderConnectionInternal;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object p0

    return-object p0
.end method

.method public hasProvider(Ljava/lang/String;)Z
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    .registers 3

    .line 64
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public numberOfProviderConnections()I
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public numberOfProviders()I
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    return p0
.end method

.method public onCleanupApplicationRecordLocked(Z)Z
    .registers 14

    .line 105
    iget-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ltz v0, :cond_47

    .line 106
    iget-object v4, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ContentProviderRecord;

    .line 107
    iget-object v5, v4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v6, :cond_1b

    goto :goto_44

    .line 111
    :cond_1b
    iget-object v5, v6, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessErrorStateRecord;->isBad()Z

    move-result v5

    if-nez v5, :cond_28

    if-nez p1, :cond_26

    goto :goto_28

    :cond_26
    move v5, v2

    goto :goto_29

    :cond_28
    :goto_28
    move v5, v1

    .line 112
    :goto_29
    iget-object v6, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    iget-object v7, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 113
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    move-result v6

    if-nez v5, :cond_3e

    if-eqz v6, :cond_3e

    .line 114
    invoke-virtual {v4}, Lcom/android/server/am/ContentProviderRecord;->hasConnectionOrHandle()Z

    move-result v5

    if-eqz v5, :cond_3e

    move v3, v1

    :cond_3e
    const/4 v5, 0x0

    .line 120
    iput-object v5, v4, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 121
    invoke-virtual {v4, v5}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    :goto_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 123
    :cond_47
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 126
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    iget-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v2}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 127
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessList;->noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    move v3, v1

    .line 132
    :cond_62
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a3

    .line 133
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_71
    if-ltz p1, :cond_9e

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 135
    iget-object v1, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    iget-object v4, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v6, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget v7, v0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v8, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, v0, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_71

    .line 140
    :cond_9e
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_a3
    return v3
.end method

.method public removeProvider(Ljava/lang/String;)V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
