.class public final synthetic Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/cloudsearch/SearchRequest;

.field public final synthetic f$1:Landroid/app/cloudsearch/ICloudSearchManagerCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/cloudsearch/SearchRequest;

    iput-object p2, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda0;->f$1:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/cloudsearch/SearchRequest;

    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda0;->f$1:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    check-cast p1, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    invoke-static {v0, v1, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->lambda$search$0(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V

    return-void
.end method
