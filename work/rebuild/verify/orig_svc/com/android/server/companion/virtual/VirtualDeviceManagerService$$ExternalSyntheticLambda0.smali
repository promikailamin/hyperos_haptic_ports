.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

.field public final synthetic f$1:Landroid/companion/CompanionDeviceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/companion/CompanionDeviceManager;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/companion/CompanionDeviceManager;

    return-void
.end method


# virtual methods
.method public final onAssociationsChanged(Ljava/util/List;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0, p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->$r8$lambda$hxbkct17BBzRDf3XO7clEo3lElU(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/companion/CompanionDeviceManager;Ljava/util/List;)V

    return-void
.end method
