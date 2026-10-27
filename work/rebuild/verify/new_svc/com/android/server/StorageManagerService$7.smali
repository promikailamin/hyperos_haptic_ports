.class public Lcom/android/server/StorageManagerService$7;
.super Lcom/android/internal/content/PackageMonitor;
.source "StorageManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 2212
    iput-object p1, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4

    .line 2215
    iget-object p0, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/StorageManagerService;->-$$Nest$mupdateLegacyStorageApps(Lcom/android/server/StorageManagerService;Ljava/lang/String;IZ)V

    return-void
.end method
