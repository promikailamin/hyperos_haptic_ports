.class public final synthetic Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/searchui/SearchUiPerUserService;

.field public final synthetic f$1:Landroid/app/search/SearchSessionId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/SearchSessionId;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/searchui/SearchUiPerUserService;

    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;->f$1:Landroid/app/search/SearchSessionId;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/searchui/SearchUiPerUserService;

    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;->f$1:Landroid/app/search/SearchSessionId;

    invoke-virtual {v0, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$onCreateSearchSessionLocked$1$com-android-server-searchui-SearchUiPerUserService(Landroid/app/search/SearchSessionId;)V

    return-void
.end method
