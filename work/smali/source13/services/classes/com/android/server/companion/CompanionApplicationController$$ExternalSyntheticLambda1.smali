.class public final synthetic Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionApplicationController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionApplicationController;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/CompanionApplicationController;

    iput p2, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/CompanionApplicationController;

    iget v1, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$2:Z

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/companion/CompanionApplicationController;->lambda$bindCompanionApplication$0$com-android-server-companion-CompanionApplicationController(IZLandroid/content/ComponentName;)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object p1

    return-object p1
.end method
