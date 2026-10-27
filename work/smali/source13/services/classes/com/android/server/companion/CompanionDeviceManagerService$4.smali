.class Lcom/android/server/companion/CompanionDeviceManagerService$4;
.super Lcom/android/internal/content/PackageMonitor;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 1045
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$4;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1053
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$4;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$4;->getChangingUserId()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    .line 1054
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1058
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$4;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$4;->getChangingUserId()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monPackageModifiedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    .line 1059
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1048
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$4;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$4;->getChangingUserId()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    .line 1049
    return-void
.end method
