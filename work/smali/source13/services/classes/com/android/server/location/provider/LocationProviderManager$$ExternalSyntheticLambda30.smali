.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$0:I

    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$1:Z

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-static {v0, v1, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onAppForegroundChanged$10(IZLcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p1

    return p1
.end method
