.class public final synthetic Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/cloudsearch/SearchRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/app/cloudsearch/SearchRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;->f$0:Landroid/app/cloudsearch/SearchRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;->f$0:Landroid/app/cloudsearch/SearchRequest;

    check-cast p1, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    invoke-static {v0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->lambda$destroy$2(Landroid/app/cloudsearch/SearchRequest;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V

    return-void
.end method
