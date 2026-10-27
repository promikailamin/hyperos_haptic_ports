.class public Lcom/android/server/blob/BlobStoreManagerService$LocalService;
.super Lcom/android/server/blob/BlobStoreManagerInternal;
.source "BlobStoreManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .registers 2

    .line 1949
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$LocalService;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$LocalService;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method


# virtual methods
.method public onIdleMaintenance()V
    .registers 1

    .line 1952
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$LocalService;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->runIdleMaintenance()V

    return-void
.end method
