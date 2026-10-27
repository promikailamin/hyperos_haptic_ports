.class public final Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "UriGrantsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriGrantsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 184
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 185
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mContext:Landroid/content/Context;

    .line 186
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Lcom/android/server/uri/UriGrantsManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    .line 187
    return-void
.end method


# virtual methods
.method public getService()Lcom/android/server/uri/UriGrantsManagerService;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 198
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_23

    .line 199
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 200
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 201
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    invoke-virtual {v0}, Lcom/android/server/uri/UriMetricsHelper;->registerPuller()V

    .line 203
    :cond_23
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    const-string/jumbo v1, "uri_grants"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    new-instance v1, Lcom/android/server/uri/UriMetricsHelper;

    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/uri/UriMetricsHelper;-><init>(Landroid/content/Context;Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;)V

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    .line 193
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mstart(Lcom/android/server/uri/UriGrantsManagerService;)V

    .line 194
    return-void
.end method
