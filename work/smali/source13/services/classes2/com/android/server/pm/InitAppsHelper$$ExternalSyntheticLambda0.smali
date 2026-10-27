.class public final synthetic Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/content/om/OverlayConfig$PackageProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InitAppsHelper;

.field public final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InitAppsHelper;

    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final forEachPackage(Lcom/android/internal/util/function/TriConsumer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InitAppsHelper;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/InitAppsHelper;->lambda$initSystemApps$1$com-android-server-pm-InitAppsHelper(Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V

    return-void
.end method
