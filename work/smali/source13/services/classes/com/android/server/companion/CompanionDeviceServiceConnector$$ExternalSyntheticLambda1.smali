.class public final synthetic Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceServiceConnector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceServiceConnector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/CompanionDeviceServiceConnector;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/CompanionDeviceServiceConnector;

    check-cast p1, Landroid/companion/ICompanionDeviceService;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->lambda$postUnbind$2$com-android-server-companion-CompanionDeviceServiceConnector(Landroid/companion/ICompanionDeviceService;)V

    return-void
.end method
