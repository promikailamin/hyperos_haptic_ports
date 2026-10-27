.class public final synthetic Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/cloudsearch/SearchRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/app/cloudsearch/SearchRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/cloudsearch/SearchRequest;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/cloudsearch/SearchRequest;

    check-cast p1, Landroid/service/cloudsearch/ICloudSearchService;

    invoke-static {v0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->lambda$onSearchLocked$0(Landroid/app/cloudsearch/SearchRequest;Landroid/service/cloudsearch/ICloudSearchService;)V

    return-void
.end method
