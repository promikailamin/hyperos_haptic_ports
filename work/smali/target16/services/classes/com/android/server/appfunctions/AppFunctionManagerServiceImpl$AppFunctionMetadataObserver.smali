.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;
.super Ljava/lang/Object;
.source "AppFunctionManagerServiceImpl.java"

# interfaces
.implements Landroid/app/appsearch/observer/ObserverCallback;


# instance fields
.field public final mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/Context;)V
    .registers 3

    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    invoke-static {p1, p2}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;)Lcom/android/server/appfunctions/MetadataSyncAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    return-void
.end method


# virtual methods
.method public onDocumentChanged(Landroid/app/appsearch/observer/DocumentChangeInfo;)V
    .registers 4

    .line 1179
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    if-nez v0, :cond_5

    goto :goto_22

    .line 1183
    :cond_5
    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apps-db"

    .line 1184
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1186
    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getNamespace()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_functions"

    .line 1187
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 1190
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    invoke-virtual {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;

    :cond_22
    :goto_22
    return-void
.end method

.method public onSchemaChanged(Landroid/app/appsearch/observer/SchemaChangeInfo;)V
    .registers 4

    .line 1196
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    if-nez v0, :cond_5

    goto :goto_32

    .line 1200
    :cond_5
    invoke-virtual {p1}, Landroid/app/appsearch/observer/SchemaChangeInfo;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apps-db"

    .line 1201
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1203
    invoke-virtual {p1}, Landroid/app/appsearch/observer/SchemaChangeInfo;->getChangedSchemaNames()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1204
    const-string v1, "AppFunctionStaticMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1210
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    invoke-virtual {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;

    :cond_32
    :goto_32
    return-void
.end method
