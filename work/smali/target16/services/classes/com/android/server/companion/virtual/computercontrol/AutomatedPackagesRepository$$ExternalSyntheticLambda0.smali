.class public final synthetic Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;

    iput-object p2, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;

    iget-object v1, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->$r8$lambda$8xnzWsdV3O9bc97VNN5gGHv7A6c(Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method
