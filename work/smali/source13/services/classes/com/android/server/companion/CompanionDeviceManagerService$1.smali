.class Lcom/android/server/companion/CompanionDeviceManagerService$1;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore$OnChangeListener;


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

    .line 1012
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .registers 4
    .param p1, "changeType"    # I
    .param p2, "association"    # Landroid/companion/AssociationInfo;

    .line 1015
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monAssociationChangedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILandroid/companion/AssociationInfo;)V

    .line 1016
    return-void
.end method
